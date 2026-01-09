String[] allBlocks;

String[] logTypes = new String[] { "oak", "spruce", "birch", "jungle", "acacia", "dark_oak", "mangrove", "cherry", "crimson", "warped"};
String[] copperTypes = new String[] { "", "exposed", "weathered", "oxidized"};
ArrayList<String> attributeBlocks = new ArrayList<String>();

ArrayList<String> cutBlocks = new ArrayList<String>();

void loadSubtypes()
{
  allBlocks = loadJSONArray("minecraft/data.json").toStringArray();
  for (String block : allBlocks)
  {
    //Only add those that are needed
    if (match(block, "_stairs") != null || match(block, "_slab") != null || match(block, "_wall") != null || match(block, "_fence") != null)
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
    if (attributeBlocks.contains(block.getString("id") + "_plant"))
      blocks.append(registerPlantSubtype(block));
    
    if (attributeBlocks.contains("cracked_" + block.getString("id")))
      blocks.append(registerAttributeSubtype(block, "cracked"));
    if (attributeBlocks.contains("mossy_" + block.getString("id")))
      blocks.append(registerAttributeSubtype(block, "mossy"));
  }
  
  //Loop after other subtypes for stair/slab/wall/fence subtypes
  JSONArray cutBlocks = new JSONArray();
  
  for (int i = 0; i < blocks.size(); i++)
  {
    cutBlocks.append(blocks.getJSONObject(i));
    //Block Lookup for stair/slab/wall/fence
    registerCutSubtypes(cutBlocks, blocks.getJSONObject(i));
  }
  
  return cutBlocks;
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

void registerCutSubtypes(JSONArray blocks, JSONObject block)
{
  String id = block.getString("id");
  if (id.endsWith("bricks") || id.endsWith("tiles"))
    id = id.substring(0, id.length() - 1);
  else if (id.endsWith("_block"))
    id = id.substring(0, id.length() - 6);
  else if (id.endsWith("_planks"))
    id = id.substring(0, id.length() - 7);
  
  //Checks
  boolean hasStair = cutBlocks.contains(id + "_stairs");
  boolean hasSlab = cutBlocks.contains(id + "_slab");
  boolean hasWall = cutBlocks.contains(id + "_wall");
  boolean hasFence = cutBlocks.contains(id + "_fence");
  
  if (!hasStair && !hasSlab)
    return;
  
  if (block.isNull("gui"))
  {
    JSONObject self = new JSONObject();
    self.setString("self", block.getString("id"));
    block.setJSONObject("gui", self);
    block.setJSONObject("convertsTo", self);
  }
  
  if (block.isNull("breaks_into"))
    block.setString("breaks_into", block.getString("id"));
  
  JSONObject stonecutterBlocks;
  JSONArray blockList;
  JSONObject stairBlock = null;
  JSONObject slabBlock = null;
  JSONObject wallBlock = null;
  
  //Cut Block Registery for Later
  JSONObject cutBlock = new JSONObject();
  cutBlock.setString("block", block.getString("id"));
  cutBlock.setString("item", block.getString("breaks_into"));
  
  //Stair Initialization
  if (hasStair)
  { 
    stairBlock = modifyNameAffix(block, "_stairs");
    stairBlock.setString("breaks_into", block.getString("breaks_into"));
    blocks.append(stairBlock);
    
    blockList = new JSONArray();
    blockList.append(id + "_stairs");
    stonecutterBlocks = new JSONObject();
    stonecutterBlocks.setJSONArray("blocks", blockList);
    
    block.getJSONObject("gui").setJSONObject("stonecutter", stonecutterBlocks);
    block.getJSONObject("convertsTo").setJSONObject("stonecutter", stonecutterBlocks);
    
    cutBlock.setString("stairs", stairBlock.getString("id"));
  }
  
  if (hasSlab)
  {
    slabBlock = modifyNameAffix(block, "_slab");
    if (!slabBlock.getJSONObject("gui").isNull("stonecutter"))
    {
      slabBlock.getJSONObject("gui").remove("stonecutter");
      slabBlock.getJSONObject("convertsTo").remove("stonecutter");
    }
    if (!validId(slabBlock.getString("breaks_into")))
    {
      slabBlock.setString("breaks_into", slabBlock.getString("id"));
      cutBlock.setBoolean("isBaseSlab", true);
    }
    blocks.append(slabBlock);
    
    blockList = new JSONArray();
    blockList.append(id + "_slab");
    stonecutterBlocks = new JSONObject();
    stonecutterBlocks.setString("item", slabBlock.getString("breaks_into"));
    stonecutterBlocks.setJSONArray("blocks", blockList);
    
    if (hasStair)
    {
      stairBlock.getJSONObject("gui").setJSONObject("stonecutter", stonecutterBlocks);
      stairBlock.getJSONObject("convertsTo").setJSONObject("stonecutter", stonecutterBlocks);
    }
    else
    {
      block.getJSONObject("gui").setJSONObject("stonecutter", stonecutterBlocks);
      block.getJSONObject("convertsTo").setJSONObject("stonecutter", stonecutterBlocks);
    }
    
    cutBlock.setString("slab", slabBlock.getString("id"));
    cutBlock.setString("slab_item", slabBlock.getString("breaks_into"));
    if (cutBlock.isNull("isBaseSlab"))
      cutBlock.setBoolean("isBaseSlab", slabBlock.getString("id").equals(slabBlock.getString("breaks_into")));
  }
  
  if (hasWall)
  {
    wallBlock = modifyNameAffix(block, "_wall");
    if (!wallBlock.getJSONObject("gui").isNull("stonecutter"))
    {
      wallBlock.getJSONObject("gui").remove("stonecutter");
      wallBlock.getJSONObject("convertsTo").remove("stonecutter");
    }
    wallBlock.setString("breaks_into", slabBlock.getString("breaks_into"));
    blocks.append(wallBlock);
    
    blockList = new JSONArray();
    blockList.append(id + "_slab");
    blockList.append(id + "_wall");
    stonecutterBlocks = new JSONObject();
    stonecutterBlocks.setString("item", wallBlock.getString("breaks_into"));
    stonecutterBlocks.setJSONArray("blocks", blockList);
    
    stairBlock.getJSONObject("gui").setJSONObject("stonecutter", stonecutterBlocks);
    stairBlock.getJSONObject("convertsTo").setJSONObject("stonecutter", stonecutterBlocks);
    
    cutBlock.setString("wall", wallBlock.getString("id"));
  }
  
  if (hasFence)
  {
    JSONObject fenceBlock = modifyNameAffix(block, "_fence");
    if (!fenceBlock.getJSONObject("gui").isNull("stonecutter"))
    {
      fenceBlock.getJSONObject("gui").remove("stonecutter");
      fenceBlock.getJSONObject("convertsTo").remove("stonecutter");
    }
    fenceBlock.setString("breaks_into", slabBlock.getString("breaks_into"));
    blocks.append(fenceBlock);
    
    blockList = new JSONArray();
    if (!hasWall)
      blockList.append(id + "_slab");
    blockList.append(id + "_fence");
    stonecutterBlocks = new JSONObject();
    stonecutterBlocks.setString("item", fenceBlock.getString("breaks_into"));
    stonecutterBlocks.setJSONArray("blocks", blockList);
    
    if (hasWall)
    {
      wallBlock.getJSONObject("gui").setJSONObject("stonecutter", stonecutterBlocks);
      wallBlock.getJSONObject("convertsTo").setJSONObject("stonecutter", stonecutterBlocks);
    }
    else
    {
      stairBlock.getJSONObject("gui").setJSONObject("stonecutter", stonecutterBlocks);
      stairBlock.getJSONObject("convertsTo").setJSONObject("stonecutter", stonecutterBlocks);
    }
    
    cutBlock.setString("fence", fenceBlock.getString("id"));
  }
  
  cutBlockRegistery.append(cutBlock);
}

JSONObject modifyNamePrefix(JSONObject block, String prefix)
{
  String[] blockStr = block.toString().split("\n");
  String newBlock = "";
  boolean inArray = false;
  
  for (String line : blockStr)
  {
    if (line.contains("use") || line.contains("sound"))
    {
      newBlock += line;
      continue;
    }
    
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

JSONObject modifyNameAffix(JSONObject block, String affix)
{
  String[] blockStr = block.toString().split("\n");
  String newBlock = "";
  
  for (String line : blockStr)
  {
    if (line.contains("use") || line.contains("sound"))
    {
      newBlock += line;
      continue;
    }
    
    line = stringReplace(line, "bricks", "brick");
    line = stringReplace(line, "tiles", "tile");
    line = stringReplace(line, "_block", "");
    line = stringReplace(line, "_planks", "");
    
    if (line.endsWith("\","))
      newBlock += line.substring(0,line.length() - 2) + affix + "\",";
    else if (line.endsWith("\""))
      newBlock += line.substring(0,line.length() - 1) + affix + "\"";
    else if (line.endsWith("\"],"))
      newBlock += line.substring(0,line.length() - 3) + affix + "\"],";
    else if (line.endsWith("\"]"))
      newBlock += line.substring(0,line.length() - 2) + affix + "\"]";
    else
      newBlock += line;
  }
  
  JSONObject jsonBlock = parseJSONObject(newBlock);
  jsonBlock.setJSONObject("convertsTo", jsonBlock.getJSONObject("gui"));
  jsonBlock.setJSONObject("gui", parseJSONObject(block.getJSONObject("gui").toString()));
  return jsonBlock;
}

boolean validId(String block)
{
  boolean valid = false;
  if (block.equals("smooth_stone_double_slab"))
    return true;
  for (String str : allBlocks)
    if (block.equals(str))
      valid = true;
  return valid;
}

StringList loadBlockStates(String block)
{
  StringList blocks = new StringList();

  //Double Slab
  if (match(block, "_double_slab") != null)
  {
    blocks.append(stringReplace(block, "_double_slab", "_slab[type=double]"));
    return blocks;
  }
  
  //Stairs
  if (block.endsWith("stairs"))
  {
    for (int i = 0; i < 2; i++)
    {
      blocks.append(block + "[facing=north,half=" + (i == 0 ? "top" : "bottom") + "]");
      blocks.append(block + "[facing=east,half=" + (i == 0 ? "top" : "bottom") + "]");
      blocks.append(block + "[facing=south,half=" + (i == 0 ? "top" : "bottom") + "]");
      blocks.append(block + "[facing=west,half=" + (i == 0 ? "top" : "bottom") + "]");
    }
    return blocks;
  }
  
  //Slabs
  if (block.endsWith("slab"))
  {
    blocks.append(block + "[type=top]");
    blocks.append(block + "[type=bottom]");
    return blocks;
  }
  
  //Directional Block
  if (block.equals("carved_pumpkin") || block.equals("jack_o_lantern"))
  {
    blocks.append(block + "[facing=north]");
    blocks.append(block + "[facing=east]");
    blocks.append(block + "[facing=south]");
    blocks.append(block + "[facing=west]");
    return blocks;
  }
  
  //Axis Block
  if (match(block, "log") != null || match(block, "wood") != null || match(block, "stem") != null || match(block, "hyphae") != null || block.equals("basalt") || block.equals("polished_basalt"))
  {
    blocks.append(block + "[axis=x]");
    blocks.append(block + "[axis=y]");
    blocks.append(block + "[axis=z]");
    return blocks;
  }
  
  //No subtypes
  blocks.append(block);
  return blocks;
}
