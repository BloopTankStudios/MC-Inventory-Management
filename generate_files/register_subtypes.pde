String[] allBlocks;

String[] logTypes = new String[] { "oak", "spruce", "birch", "jungle", "acacia", "dark_oak", "mangrove", "cherry", "crimson", "warped"};
String[] copperTypes = new String[] { "", "exposed", "weathered", "oxidized"};
ArrayList<String> attributeBlocks = new ArrayList<String>();

ArrayList<String> cutBlocks = new ArrayList<String>();

String[] directionalBlocks = new String[] { "carved_pumpkin", "jack_o_lantern" };

void loadSubtypes()
{
  allBlocks = loadJSONArray("minecraft/data.json").toStringArray();
  for (String block : allBlocks)
  {
    //Only add those that are needed
    if (match(block, "_stairs") != null || match(block, "_slab") != null || match(block, "_wall") != null || match(block, "_fence") != null || match(block, "_plant") != null)
      cutBlocks.add(block);
    if (match(block, "_plant") != null || match(block, "cracked_") != null || match(block, "mossy_") != null)
      attributeBlocks.add(block);
  }
}

JSONArray registerSubtypes(JSONObject block)
{
  JSONArray blocks = null;
  
  //Wood
  if (match(block.getString("id"), "log") != null || match(block.getString("id"), "wood") != null || block.getString("id").equals("planks"))
    blocks = registerWoodSubtypes(block);
  //Copper
  else if (match(block.getString("id"), "copper") != null)
    blocks = registerCopperSubtypes(block);
  else
  {
    blocks = new JSONArray();
    if (!block.isNull("gui"))
      block.setJSONObject("convertsTo", block.getJSONObject("gui"));
    blocks.append(block);
    
    //Block Lookup for generic subtypes
    for (String str : attributeBlocks)
    {
      //Plants
      if (str.equals(block.getString("id") + "_plant"))
        blocks.append(registerPlantSubtype(block));
        
      //Attributes
      if (str.equals("cracked_" + block.getString("id")))
        blocks.append(registerAttributeSubtype(block, "cracked"));
      if (str.equals("mossy_" + block.getString("id")))
        blocks.append(registerAttributeSubtype(block, "mossy"));
    }
  }
  
  return blocks;
}

JSONArray registerWoodSubtypes(JSONObject block)
{
  JSONArray woodBlocks = new JSONArray();
  
  for (int i = 0; i < logTypes.length; i++)
  {
    String newBlock = block.toString();
       
    newBlock = stringReplace(newBlock, "log", logTypes[i] + "_log");
    newBlock = stringReplace(newBlock, "wood\"", logTypes[i] + "_wood\"");
    newBlock = stringReplace(newBlock, "planks", logTypes[i] + "_planks");
    
    if (logTypes[i].equals("crimson") || logTypes[i].equals("warped"))
    {
      newBlock = stringReplace(newBlock, "_log", "_stem");
      newBlock = stringReplace(newBlock, "_wood", "_hyphae");
      newBlock = stringReplace(newBlock, "block.wood.place", "block.stem.place");
    }
    
    JSONObject woodBlock = parseJSONObject(newBlock);
    if (!woodBlock.isNull("gui"))
      woodBlock.setJSONObject("convertsTo", woodBlock.getJSONObject("gui"));
    
    woodBlocks.append(woodBlock);
  }
    
  return woodBlocks;
}

JSONArray registerCopperSubtypes(JSONObject block)
{
  JSONArray copperBlocks = new JSONArray();
  
  for (int w = 0; w < 2; w++)
  {
    for (int i = 0; i < copperTypes.length; i++)
    {
      String copperType = (w == 0 ? "" : "waxed_") + copperTypes[i] + (i == 0 ? "" : "_");
      
      /*JSONObject newBlock = parseJSONObject(block.toString());
      
      if (i == 0 && block.getString("id").equals("copper"))
        newBlock.setString("id", copperType + "copper_block");
      else
        newBlock.setString("id", copperType + block.getString("id"));
        
      if (i == 0 && block.getString("breaks_into").equals("copper"))
        newBlock.setString("breaks_into", copperType + block.getString("breaks_into") + "_block");
      else
        newBlock.setString("breaks_into", copperType + block.getString("breaks_into"));
      
      if (!newBlock.getJSONObject("gui").isNull("water_to_waxed"))
        newBlock.getJSONObject("gui").getJSONArray("water_to_waxed").setString(0, "copper_block");
      
      copperBlocks.append(newBlock);*/
      
      copperBlocks.append(modifyNamePrefix(block, copperType));
    }
  }

  return copperBlocks;
}

JSONObject registerPlantSubtype(JSONObject block)
{  
  JSONObject newBlock = parseJSONObject(block.toString());
  newBlock.setString("plant_id", block.getString("id"));
  newBlock.setString("id", block.getString("id") + "_plant");
  return newBlock;
}

JSONObject registerAttributeSubtype(JSONObject block, String attribute)
{
  JSONObject newBlock = modifyNamePrefix(parseJSONObject(block.toString()), attribute + "_");
  
  if (block.getJSONObject("gui").isNull("attributes"))
  {
    block.getJSONObject("gui").setJSONArray("attributes", new JSONArray());
    block.getJSONObject("convertsTo").setJSONArray("attributes", new JSONArray());
  }
  
  JSONObject convertBlock = new JSONObject();
  switch (attribute)
  {
    case "cracked":
      convertBlock.setString("use", "flint_and_steel");
      break;
    case "mossy":
      convertBlock.setString("use", "moss_block");
      break;
  }
  convertBlock.setString("block", attribute + "_" + block.getString("id"));
  block.getJSONObject("gui").getJSONArray("attributes").append(convertBlock);
  
  newBlock.setString("breaks_into", block.getString("breaks_into"));
  
  if (newBlock.getJSONObject("gui").isNull("special_cases"))
  {
    newBlock.getJSONObject("gui").setString("self", newBlock.getString("id"));
    newBlock.getJSONObject("gui").setJSONArray("special_case", new JSONArray());
    newBlock.getJSONObject("convertsTo").setJSONArray("special_case", new JSONArray());
  }
  
  JSONObject specialCase = new JSONObject();
  specialCase.setString("use", attribute.equals("cracked") ? "honeycomb" : "brush");
  specialCase.setString("converts_to", block.getString("id"));
  specialCase.setString("sound", "");
  newBlock.getJSONObject("gui").getJSONArray("special_case").append(specialCase);
  newBlock.getJSONObject("convertsTo").getJSONArray("special_case").append(specialCase);
  newBlock.setJSONObject("gui", newBlock.getJSONObject("convertsTo"));
  
  return newBlock;
}

JSONObject modifyNamePrefix(JSONObject block, String prefix)
{
  String[] blockStr = block.toString().split("\n");
  String newBlock = "";
  boolean inArray = false;
  
  for (String line : blockStr)
  {
    if ((prefix.equals("") || prefix.equals("waxed_")) && match(line, "\"copper\"") != null)
      line = stringReplace(line, "copper", "copper_block");
      
    if (match(line, ": \"") != null)
      line = stringReplace(line, ": \"", ": \"" + prefix);
    else if (split(line, '[').length > 1)
    {
      inArray = true;
      line = stringReplace(line, "[\"", "[\"" + prefix);
    }
    else if (inArray)
      line = stringReplace(line, " \"", " \"" + prefix);
    if (split(line, ']').length > 1)
      inArray = false;
    newBlock += line;
  }
  JSONObject jsonBlock = parseJSONObject(newBlock);
  jsonBlock.setJSONObject("convertsTo", jsonBlock.getJSONObject("gui"));
  jsonBlock.setJSONObject("gui", block.getJSONObject("gui"));
  return jsonBlock;
}

boolean validId(String block)
{
  boolean valid = false;
  for (String str : allBlocks)
    if (block.equals(str))
      valid = true;
  return valid;
}

StringList loadBlockStates(String block)
{
  StringList blocks = new StringList();
  blocks.append(block);
  
  if (match(block, "_double_slab") != null)
  {
    blocks.set(0, stringReplace(block, "_double_slab", "_slab[type=double]"));
    return blocks;
  }
  
  //Directional Block
  boolean directionalBlock = false;
  for (int i = 0; i < directionalBlocks.length; i++)
    if (block.equals(directionalBlocks[i]))
    {
      directionalBlock = true;
      break;
    }
    
  if (directionalBlock)
  {
    String[] currBlocks = blocks.toArray();
    blocks.clear();
    for (String newBlock : currBlocks)
    {
      blocks.append(newBlock + "[facing=north]");
      blocks.append(newBlock + "[facing=east]");
      blocks.append(newBlock + "[facing=south]");
      blocks.append(newBlock + "[facing=west]");
    }
  }
  
  //Axis Block
  if (match(block, "log") != null || match(block, "wood") != null || match(block, "stem") != null || match(block, "hyphae") != null || block.equals("basalt") || block.equals("polished_basalt"))
  {
    String[] currBlocks = blocks.toArray();
    blocks.clear();
    for (String newBlock : currBlocks)
    {
      blocks.append(newBlock + "[axis=x]");
      blocks.append(newBlock + "[axis=y]");
      blocks.append(newBlock + "[axis=z]");
    }
  }
  
  return blocks;
}
