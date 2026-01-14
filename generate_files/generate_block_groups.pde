// Used to generate save states

HashMap<String, ArrayList<String>> blockGroups = new HashMap<>();

void generateSaveStates(JSONObject block)
{
    if (block.isNull("gui") || block.isNull("breaks_into"))
      return;
    
    String breaksInto = block.getString("breaks_into");
    if (breaksInto.endsWith("slab"))
    {
      breaksInto = breaksInto.substring(0, breaksInto.length() - 5);
      
      //Naming Shenanigans
      if (breaksInto.endsWith("brick"))
        breaksInto += "s";
      
      for (String log : allLogTypes)
        if (breaksInto.equals(log))
          breaksInto += "_planks";
      
      if (breaksInto.equals("quartz") || breaksInto.equals("purpur"))
        breaksInto += "_block";
      
      //Special slab cases that need to also be dealt with later
      if (breaksInto.endsWith("cut_copper"))
      {
        breaksInto = breaksInto.substring(0, breaksInto.length() - 10) + "copper";
        if (breaksInto.equals("copper") || breaksInto.equals("waxed_copper"))
          breaksInto += "_block";
      }
      else if (breaksInto.equals("mud_bricks"))
        breaksInto = "dirt";
    }
    
    if (!blockGroups.containsKey(breaksInto))
      blockGroups.put(breaksInto, new ArrayList<String>());
    blockGroups.get(breaksInto).add(block.getString("id"));
}

void finishSaveStates()
{
    PrintWriter testFile = createWriter("output/block_groups.json");
    
    //List of Variants
    JSONArray itemsGroupTag = new JSONArray();
    JSONArray itemsTag = new JSONArray();
    
    //Function
    BufferedReader _getVariantFunction = createReader("./templates/block_group_functions/get_variant_block.mcfunction");
    PrintWriter getVariantFunction = createWriter("../data/brush/function/storage/get_variant_block.mcfunction");
    String getVariant_Line = copyTemplate(_getVariantFunction, getVariantFunction, true);
    
    //Item Modifier
    BufferedReader _fromVariantModifier = createReader("./templates/block_group_functions/from_variant_item.json");
    PrintWriter fromVariantModifier = createWriter("../data/brush/item_modifier/from_variant_item.json");
    String fromVariant_Lines = copyTemplate(_fromVariantModifier, fromVariantModifier, false);
        
    for (String group : blockGroups.keySet()) {
      testFile.println(group);
      
      //Add self if not already
      if (!blockGroups.get(group).contains(group))
        blockGroups.get(group).add(group);
      
      //Add to List
      itemsGroupTag.append("#brush:group/" + group + "_variant");
      itemsTag.append(group);
      
      //Add to Functions
      getVariantFunction.println(stringReplace(getVariant_Line, "BLOCK", group));
      fromVariantModifier.println(stringReplace(fromVariant_Lines, "BLOCK", group));
      
      //Group List
      JSONArray groupTag = new JSONArray();
      
      for (String block : blockGroups.get(group))
      {
        testFile.println("\t" + block);
        
        //Add to Group List
        groupTag.append(block);
      }
      
      //Save
      saveJSONObject(new JSONObject().put("values", groupTag), "../data/brush/tags/block/group/" + group + "_variant.json");
      saveJSONObject(new JSONObject().put("values", groupTag), "../data/brush/tags/item/group/" + group + "_variant.json");
    }
    testFile.flush();
    testFile.close();
    
    //Save
    saveJSONObject(new JSONObject().put("values", itemsGroupTag), "../data/brush/tags/item/variant_group.json");
    saveJSONObject(new JSONObject().put("values", itemsTag), "../data/brush/tags/item/variant_group_base.json");
    
    copyTemplate(_getVariantFunction, getVariantFunction, false);
    copyTemplate(_fromVariantModifier, fromVariantModifier, false);
    try
    {
      _getVariantFunction.close();
      _fromVariantModifier.close();
    }
    catch (IOException e)
    {
      e.printStackTrace();
    }
    getVariantFunction.flush();
    getVariantFunction.close();
    fromVariantModifier.flush();
    fromVariantModifier.close();
}


String copyTemplate(BufferedReader template, PrintWriter file, Boolean disclaimer)
{
  if (disclaimer)
    file.println("# Auto Generated\n");
  
  String modifyLines = "";
  
  String line;
  Boolean modifable = false;
  
  try
  {
    //Read
    while ((line = template.readLine()) != null) {
      if (line.equals("<--"))
        modifable = true;
      else if (line.equals("-->"))
        break;
      else if (modifable)
        modifyLines += line + "\n";
      else
        file.println(line);
    }
    
  }
  catch (IOException e)
  {
    e.printStackTrace();
  }
  
  if (modifyLines != "")
    modifyLines = modifyLines.substring(0, modifyLines.length() - 1);
  
  return modifyLines;
}
