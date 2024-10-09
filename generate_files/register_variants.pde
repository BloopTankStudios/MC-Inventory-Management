void registerDefaultVariants()
{
  JSONArray variants = loadJSONArray("variants/default_variants.json");
  
  println(variants);
  
  //Add all blocks to blockRegistery
  for (int i = 0; i < variants.size(); i++) {
    JSONObject variantInfo = variants.getJSONObject(i); 
    
    //Move Pillars into Chiseled for now
    for (String pillar : variantInfo.getJSONArray("pillar").toStringList())
      variantInfo.getJSONArray("chiseled").append(pillar);
    
    //Set Water To Fire Block Registeries
    JSONArray blockList = variantInfo.getJSONArray("water_to_fire");
    for (int b = 0; b < blockList.size(); b++)
    {
      JSONObject newBlock = new JSONObject();
      
      newBlock.setString("id", blockList.getString(b));
      newBlock.setString("breaks_into", variantInfo.getString("breaks_into"));
      
      JSONObject guiArrays = new JSONObject();
      guiArrays.setJSONArray("water_to_fire", blockList);  
      
      if (variantInfo.getJSONArray("water_to_waxed").size() > 0)
      {
        JSONArray gui = new JSONArray();
        gui.append(variantInfo.getJSONArray("water_to_waxed").getString(0));
        guiArrays.setJSONArray("water_to_waxed", gui);  
      }
      
      newBlock.setJSONObject("gui", guiArrays);
      blockRegistery.append(newBlock);
    }
    
    //Set Water To Waxed Block Registeries
    blockList = variantInfo.getJSONArray("water_to_waxed");
    for (int b = 0; b < blockList.size(); b++)
    {
      JSONObject newBlock = new JSONObject();
      
      newBlock.setString("id", blockList.getString(b));
      newBlock.setString("breaks_into", variantInfo.getString("breaks_into"));
      
      JSONObject guiArrays = new JSONObject();
      
      if (variantInfo.getJSONArray("water_to_fire").size() > 0)
      {
        JSONArray gui = new JSONArray();
        gui.append(variantInfo.getJSONArray("water_to_fire").getString(0));
        guiArrays.setJSONArray("water_to_fire", gui);  
      }
      
      guiArrays.setJSONArray("water_to_waxed", blockList);  

      if (variantInfo.getJSONArray("chiseled").size() > 0)
      {
        JSONArray gui = new JSONArray();
        gui.append(variantInfo.getJSONArray("chiseled").getString(0));
        guiArrays.setJSONArray("chiseled", gui);
      }
      
      newBlock.setJSONObject("gui", guiArrays);
      blockRegistery.append(newBlock);
    }
    
    //Set Chiseled Block Regestries
    blockList = variantInfo.getJSONArray("chiseled");
    for (int b = 0; b < blockList.size(); b++)
    {
      JSONObject newBlock = new JSONObject();
      
      newBlock.setString("id", blockList.getString(b));
      newBlock.setString("breaks_into", variantInfo.getString("breaks_into"));
      
      JSONObject guiArrays = new JSONObject();
      
      JSONArray gui = new JSONArray();
      gui.append(variantInfo.getJSONArray("water_to_waxed").getString(0));
      guiArrays.setJSONArray("water_to_waxed", gui);

      guiArrays.setJSONArray("chiseled", variantInfo.getJSONArray("chiseled"));
      
      newBlock.setJSONObject("gui", guiArrays);
      blockRegistery.append(newBlock);
    }
  }
}

void registerCustomVariants()
{
  JSONArray variants = loadJSONArray("variants/custom_variants.json");
  
  println(variants);
  
  //Add all blocks to blockRegistery
  for (int i = 0; i < variants.size(); i++)
  {
    JSONObject variantInfo = variants.getJSONObject(i); 
    
    //Search for block registery if already created
    JSONObject block = null;
    for (int b = 0; b < blockRegistery.size(); b++)
      if (blockRegistery.getJSONObject(b).getString("id").equals(variantInfo.getString("from")))
        block = blockRegistery.getJSONObject(b);
    
    if (block == null)
    {
      block = new JSONObject();
      block.setString("id", variantInfo.getString("from"));
      blockRegistery.append(block);
    }

    if (block.isNull("gui"))
      block.setJSONObject("gui", new JSONObject());
      
    if (block.getJSONObject("gui").isNull("special_case"))
      block.getJSONObject("gui").setJSONArray("special_case", new JSONArray());
        
    JSONObject specialCase = new JSONObject();
    specialCase.setString("use", variantInfo.getString("using"));
    specialCase.setString("converts_to", variantInfo.getString("to"));
    specialCase.setString("sound", variantInfo.getString("sound"));
    block.getJSONObject("gui").getJSONArray("special_case").append(specialCase);
    
    //Contain self reference if just used in special case
    if (block.getJSONObject("gui").isNull("water_to_fire") && block.getJSONObject("gui").isNull("water_to_waxed"))
        block.getJSONObject("gui").setString("self", block.getString("id"));
    
    //Do it all over again if has inverse_using
    if (!variantInfo.isNull("inverted_using"))
    {
      //Search for block registery if already created
      block = null;
      for (int b = 0; b < blockRegistery.size(); b++)
        if (blockRegistery.getJSONObject(b).getString("id").equals(variantInfo.getString("to")))
          block = blockRegistery.getJSONObject(b);
      
      if (block == null)
      {
        block = new JSONObject();
        block.setString("id", variantInfo.getString("to"));
        blockRegistery.append(block);
      }
  
      if (block.isNull("gui"))
        block.setJSONObject("gui", new JSONObject());
        
      if (block.getJSONObject("gui").isNull("special_case"))
        block.getJSONObject("gui").setJSONArray("special_case", new JSONArray());
      
      specialCase = new JSONObject();
      specialCase.setString("use", variantInfo.getString("inverted_using"));
      specialCase.setString("converts_to", variantInfo.getString("from"));
      specialCase.setString("sound", variantInfo.getString("sound"));
      block.getJSONObject("gui").getJSONArray("special_case").append(specialCase);
      
      //Contain self reference if just used in special case
      if (block.getJSONObject("gui").isNull("water_to_fire") && block.getJSONObject("gui").isNull("water_to_waxed"))
        block.getJSONObject("gui").setString("self", block.getString("id"));
        
    }
  }
}

void registerStoneCutterVariants()
{
  JSONArray variants = loadJSONArray("variants/stonecutter.json");
  
  println(variants);
  
  //Add all blocks to blockRegistery
  for (int i = 0; i < variants.size(); i++)
  {
    String variant = variants.getString(i);
    
    //Search for block registery if already created
    JSONObject block = null;
    for (int b = 0; b < blockRegistery.size(); b++)
      if (blockRegistery.getJSONObject(b).getString("id").equals(variant))
        block = blockRegistery.getJSONObject(b);
    
    if (block == null)
    {
      block = new JSONObject();
      block.setString("id", variant);
      blockRegistery.append(block);
    }
    
    block.setString("breaks_into", variant);
  }
}

void registerLootTableVariants()
{
    JSONArray variants = loadJSONArray("variants/loot_table.json");
  
  println(variants);
  
  //Add all blocks to blockRegistery
  for (int i = 0; i < variants.size(); i++)
  {
    JSONObject variantInfo = variants.getJSONObject(i);
    
    JSONArray blockList = variantInfo.getJSONArray("blocks");  
    
    for (int v = 0; v < blockList.size(); v++)
    {
      //Search for block registery if already created
      JSONObject block = null;
      for (int b = 0; b < blockRegistery.size(); b++)
        if (blockRegistery.getJSONObject(b).getString("id").equals(blockList.getString(v)))
          block = blockRegistery.getJSONObject(b);
      
      if (block == null)
      {
        block = new JSONObject();
        block.setString("id", blockList.getString(v));
        blockRegistery.append(block);
      }
      
      block.setString("breaks_into", variantInfo.getString("breaks_into"));
      if (!variantInfo.getString("type").equals("one_to_one"))
        block.setString("loot_type", variantInfo.getString("type"));
    }
  }
}
