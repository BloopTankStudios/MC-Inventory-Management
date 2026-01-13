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
    for (String group : blockGroups.keySet()) {
      testFile.println(group);
      
      if (!blockGroups.get(group).contains(group))
        blockGroups.get(group).add(group);
      
      for (String block : blockGroups.get(group))
        testFile.println("\t" + block);
    }
    testFile.flush();
    testFile.close();
}
