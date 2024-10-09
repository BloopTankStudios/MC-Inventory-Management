PrintWriter displayGUI;
WriterDict blockTags = new WriterDict();

void setupGUIFunctions()
{
  displayGUI = createWriter("../data/brush/function/gui/display_gui.mcfunction");
  displayGUI.println("# Auto Generated");
  displayGUI.println();
  
  blockTags.append("brush", createWriter("../data/brush/tags/block/brush_variant_block.json"), createWriter("../data/brush/function/use_brush/use_brush.mcfunction"));
  blockTags.append("water_bottle", createWriter("../data/brush/tags/block/water_variant_block.json"), createWriter("../data/brush/function/use_brush/use_water.mcfunction"));
  blockTags.append("flint_and_steel", createWriter("../data/brush/tags/block/fire_variant_block.json"), createWriter("../data/brush/function/use_brush/use_fire.mcfunction"));
  blockTags.append("honeycomb", createWriter("../data/brush/tags/block/honeycomb_variant_block.json"), createWriter("../data/brush/function/use_brush/use_honeycomb.mcfunction"));
  blockTags.append("iron_pickaxe", createWriter("../data/brush/tags/block/pickaxe_variant_block.json"), createWriter("../data/brush/function/use_brush/use_pickaxe.mcfunction"));
  blockTags.append("dye", createWriter("../data/brush/tags/block/dyable_variant_block.json"), createWriter("../data/brush/function/use_brush/use_dye.mcfunction"));
  blockTags.append("other", createWriter("../data/brush/tags/block/custom_variant_block.json"), createWriter("../data/brush/function/use_brush/use_custom.mcfunction"));
  blockTags.endAppend();
}

void GUIFunctionsDone()
{  
  displayGUI.flush();
  displayGUI.close(); 
  
  blockTags.close();
}

void generateGUIFunction(JSONObject block)
{
  //println(block.getString("id"));
  if (block.isNull("gui"))
    return;
  
  int slotCount = 0;
  int groupCount = 0;
  
  String function = "execute if block ~ ~ ~ " + stringReplace(block.getString("id"), "_double_slab", "_slab[type=double]") +
    " run return run title @s actionbar [{\"translate\":\"bgui.align.right\"}, ";
  
  JSONObject guiInfo = block.getJSONObject("gui");
  JSONObject convertInfo = block.getJSONObject("convertsTo");
  
  //Put special cases after it shows itself
  String specialCases = "";
  
  if (!guiInfo.isNull("special_case"))
  {
    JSONArray blocks = guiInfo.getJSONArray("special_case");
    JSONArray converts = convertInfo.getJSONArray("special_case");
    for (int i = 0; i < blocks.size(); i++)
      if (validId(converts.getJSONObject(i).getString("converts_to")))
      {
        specialCases += "{\"translate\":\"bgui.slot\"}, ";
        specialCases += "{\"translate\":\"bgui.block." + blocks.getJSONObject(i).getString("converts_to") + "\"}, ";
         
        specialCases += "{\"translate\":\"bgui.using." + blocks.getJSONObject(i).getString("use") + "\"}, ";
        
        slotCount++;
        
        blockTags.addBlock(blocks.getJSONObject(i).getString("use"), block.getString("id"), converts.getJSONObject(i).getString("converts_to"), converts.getJSONObject(i).getString("sound"));
      }
    specialCases += "{\"translate\":\"bgui.align.space\"}, ";
    groupCount++;
  }
  
  //Display self first
  if (!guiInfo.isNull("self"))
  {
    function += "{\"translate\":\"bgui.slot\"}, {\"translate\":\"bgui.slot.current\"}, {\"translate\":\"bgui.block." + guiInfo.getString("self") + "\"}, ";
    slotCount++;
    
    function += specialCases;
  }
  
  //Display water to fire blocks next
  if (!guiInfo.isNull("water_to_fire"))
  {
    boolean valid = false;
    int selfIndex = -1;
    
    String[] blocks = guiInfo.getJSONArray("water_to_fire").toStringArray();
    String[] converts = convertInfo.getJSONArray("water_to_fire").toStringArray();
    for (int i = 0; i < blocks.length; i++)
      if (validId(converts[i]))
      {
        boolean isBlock = converts[i].equals(block.getString("id"));
        
        function += "{\"translate\":\"bgui.slot\"}, {\"translate\":\"bgui.slot.fired\"}, ";
        if (isBlock)
        {
          function += "{\"translate\":\"bgui.slot.current\"}, ";
          selfIndex = i;
        }
          
        function += "{\"translate\":\"bgui.block." + blocks[i] + "\"}, ";
        
        if (!isBlock)
        {
          if (i == 0)
            function += "{\"translate\":\"bgui.using.water_bottle\"}, ";
          else if (i == blocks.length - 1)
            function += "{\"translate\":\"bgui.using.flint_and_steel\"}, ";
        }
        slotCount++;
        valid = true;
      }
    
    if (valid)
    {
      function += "{\"translate\":\"bgui.align.space\"}, ";
      groupCount++;
  
      if (selfIndex != -1)
      {
        function += specialCases;
        if (selfIndex > 0)
          blockTags.addBlock("water_bottle", block.getString("id"), converts[selfIndex - 1]);
        if (selfIndex < blocks.length - 1)
          blockTags.addBlock("flint_and_steel", block.getString("id"), converts[selfIndex + 1]);
      }
      else if (guiInfo.getJSONArray("water_to_waxed").getString(0).equals(block.getString("id")))
        blockTags.addBlock("water_bottle", block.getString("id"), converts[0]);
    }
  }
  
  //Display water to wax blocks next
  if (!guiInfo.isNull("water_to_waxed") && match(block.getString("id"), "cracked") == null)
  {
    boolean valid = false;
    int selfIndex = -1;
    
    String[] blocks = guiInfo.getJSONArray("water_to_waxed").toStringArray();
    String[] converts = convertInfo.getJSONArray("water_to_waxed").toStringArray();
    for (int i = 0; i < blocks.length; i++)
      if (validId(converts[i]))
      {
        boolean isBlock = converts[i].equals(block.getString("id"));
        
        function += "{\"translate\":\"bgui.slot\"}, {\"translate\":\"bgui.slot.waxed\"}, ";
        if (isBlock)
        {
          function += "{\"translate\":\"bgui.slot.current\"}, ";
          selfIndex = i;
        }
          
        function += "{\"translate\":\"bgui.block." + blocks[i] + "\"}, ";
         
        if (!isBlock)
        {
          if (blocks.length == 1 && guiInfo.isNull("water_to_fire"))
            function += "{\"translate\":\"bgui.using.water_bottle\"}, ";
          else if (i == blocks.length - 1)
            function += "{\"translate\":\"bgui.using.honeycomb\"}, ";
          else if (i == 0)
            function += "{\"translate\":\"bgui.using.water_bottle\"}, ";
        }
        slotCount++;
        valid = true;
      }
      
    if (valid)
    {
      function += "{\"translate\":\"bgui.align.space\"}, ";
      groupCount++;
      
      if (selfIndex != -1)
      {
        function += specialCases;
        if (selfIndex > 0)
          blockTags.addBlock("water_bottle", block.getString("id"), converts[selfIndex - 1]);
        if (selfIndex < blocks.length - 1)
          blockTags.addBlock("honeycomb", block.getString("id"), converts[selfIndex + 1]);
      }
      else if (guiInfo.isNull("water_to_fire"))
        blockTags.addBlock("water_bottle", block.getString("id"), converts[0]);
      else
        blockTags.addBlock("honeycomb", block.getString("id"), converts[0]);
    }
  }
  
  //Display chiseled blocks at end
  if (!guiInfo.isNull("chiseled"))
  {
    boolean valid = false;
    int selfIndex = -1;
    
    String[] blocks = guiInfo.getJSONArray("chiseled").toStringArray();
    String[] converts = convertInfo.getJSONArray("chiseled").toStringArray();
    for (int i = 0; i < blocks.length; i++)
      if (validId(converts[i]))
      {
        boolean isBlock = converts[i].equals(block.getString("id"));
        
        function += "{\"translate\":\"bgui.slot\"}, {\"translate\":\"bgui.slot.chiseled\"}, ";
        if (isBlock)
        {
          function += "{\"translate\":\"bgui.slot.current\"}, ";
          selfIndex = i;
        }
        
        function += "{\"translate\":\"bgui.block." + blocks[i] + "\"}, ";
         
        if (!isBlock)
          function += "{\"translate\":\"bgui.using.iron_pickaxe\"}, ";
        slotCount++;
        valid = true;
      }
    
    if (valid)
    {
      function += "{\"translate\":\"bgui.align.space\"}, ";
      groupCount++;
      
      if (selfIndex != -1)
      {
        function += specialCases;
        if (blocks.length > 1)
          if (selfIndex == blocks.length - 1)
            blockTags.addBlock("iron_pickaxe", block.getString("id"), converts[0]);
          else
            blockTags.addBlock("iron_pickaxe", block.getString("id"), converts[selfIndex + 1]);
      }
      else
        blockTags.addBlock("iron_pickaxe", block.getString("id"), converts[0]);
    }
  }
  
  if (!guiInfo.isNull("attributes"))
  {    
    JSONArray blocks = guiInfo.getJSONArray("attributes");
    JSONArray converts = convertInfo.getJSONArray("attributes");
    for (int i = 0; i < blocks.size(); i++)
      if (validId(converts.getJSONObject(i).getString("block")))
      {
        println("->" + converts.getJSONObject(i).getString("block"));
        function += "{\"translate\":\"bgui.slot\"}, ";
        function += "{\"translate\":\"bgui.block." + blocks.getJSONObject(i).getString("block") + "\"}, ";
         
        function += "{\"translate\":\"bgui.using." + blocks.getJSONObject(i).getString("use") + "\"}, ";
        
        slotCount++;
        
        if (blocks.getJSONObject(i).getString("use").equals("moss_block"))
          blockTags.addBlock(blocks.getJSONObject(i).getString("use"), block.getString("id"), converts.getJSONObject(i).getString("block"), "block.moss.place");
        else
          blockTags.addBlock(blocks.getJSONObject(i).getString("use"), block.getString("id"), converts.getJSONObject(i).getString("block"));
      }
  }
  
  //Check that special cases has been used
  if (!specialCases.equals("") && split(function, specialCases).length == 1)
  {
    function += "{\"translate\":\"bgui.slot\"}, {\"translate\":\"bgui.slot.current\"}, {\"translate\":\"bgui.block." + block.getString("id") + "\"}, ";
    slotCount++;
    
    function += specialCases;
  }
  
  //Temp
  //function += "{\"translate\":\"bgui.slot.normal\"}, {\"translate\":\"bgui.block." + block.getString("id") + "\"}, ";
  
  for (int i = 0; i < groupCount; i++)
    function += "{\"translate\":\"bgui.align.end_space\"}, ";
  
  function += "{\"translate\":\"bgui.align.count_" + slotCount + "\"}]";
  
  //Store Value
  displayGUI.println(function);
}



class WriterDict
{
  StringList keys = new StringList();
  ArrayList<PrintWriter> tagValues = new ArrayList<PrintWriter>();
  ArrayList<PrintWriter> functionValues = new ArrayList<PrintWriter>();
  boolean[] hasWrittenTo;
  
  void append(String key, PrintWriter tagValue, PrintWriter functionValue)
  {
    keys.append(key);
    tagValues.add(tagValue);
    tagValue.println("{");
    tagValue.println("\"values\": [");
    functionValues.add(functionValue);
    functionValue.println("# Auto Generated");
    functionValue.println();
    
    switch (key)
    {
      case "brush":
        functionValue.println("playsound minecraft:item.brush.brushing.gravel.complete block @a ~.5 ~.5 ~.5 .5");
        functionValue.println();
        break;
      case "water_bottle":
        functionValue.println("playsound minecraft:item.bottle.empty block @a ~.5 ~.5 ~.5 .5");
        functionValue.println("particle minecraft:splash ~.5 ~.5 ~.5 .3 .3 .3 1 40");
        functionValue.println();
        break;
      case "flint_and_steel":
        functionValue.println("playsound minecraft:item.flintandsteel.use block @a ~.5 ~.5 ~.5 .5");
        functionValue.println("playsound minecraft:block.fire.extinguish block @a ~.5 ~.5 ~.5 .1");
        functionValue.println("particle minecraft:smoke ~.5 ~.5 ~.5 .35 .35 .35 .01 40");
        functionValue.println();
        break;
      case "honeycomb":
        functionValue.println("playsound minecraft:block.honey_block.place block @a ~.5 ~.5 ~.5 .5");
        functionValue.println("particle minecraft:block{block_state:\"minecraft:honey_block\"} ~.5 ~.5 ~.5 .3 .3 .3 1 10");
        functionValue.println();
        break;
      case "iron_pickaxe":
        functionValue.println("playsound minecraft:ui.stonecutter.take_result block @a ~.5 ~.5 ~.5 .5");
        functionValue.println();
        break;
      case "dye":
        functionValue.println("playsound minecraft:item.brush.brushing.sand.complete block @a ~.5 ~.5 ~.5 .5");
        functionValue.println();
        break;
    }
  }
  
  void endAppend()
  {
    hasWrittenTo = new boolean[keys.size()];
  }
  
  void addBlock(String key, String id, String convertsTo)
  {
    addBlock(key, id, convertsTo, "");
  }
  
  void addBlock(String key, String id, String convertsTo, String sound)
  {
    if (!validId(convertsTo))
      return;
    
    String customKey = key;
    if (key.equals("chorus_fruit"))
      customKey = "minecraft:debug_stick[minecraft:custom_model_data=2]";
    if (match(key, "dye") != null)
      key = "dye";
    
    for (int i = 0; i < keys.size(); i++)
      if (keys.get(i).equals(key) || i == keys.size() - 1)
      {
        //Gather BlockStates for Commands
        StringList idBlockStates = loadBlockStates(id);
        StringList convertBlockStates = loadBlockStates(convertsTo);
        
        if (idBlockStates.size() != convertBlockStates.size())
        {
          idBlockStates = new StringList();
          idBlockStates.append(id);
          convertBlockStates = new StringList();
          convertBlockStates.append(convertsTo);
        }
        
        id = stringReplace(id, "_double_slab", "_slab");
        
        //Write BlockTag
        if (!hasWrittenTo[i])
          tagValues.get(i).print("\"" + id + "\"");
        else
          tagValues.get(i).print(",\n\"" + id + "\"");
        hasWrittenTo[i] = true;
        
        //Special Cases
        switch (keys.get(i))
        {
          case "brush":
            functionValues.get(i).println("execute if block ~ ~ ~ " + id +
              " run particle minecraft:block{block_state:\"" + id + "\"} ~.5 ~.5 ~.5 .35 .35 .35 1 40");
            break;
          case "iron_pickaxe":
            functionValues.get(i).println("execute if block ~ ~ ~ " + id +
              " run particle minecraft:block{block_state:\"" + id + "\"} ~.5 ~.5 ~.5 .35 .35 .35 1 40");
            break;
          case "dye":
            switch (customKey)
            {
              case "red_dye":
                functionValues.get(i).println("execute if block ~ ~ ~ " + id + " if items entity @s weapon.* " + customKey +
                " run particle minecraft:dust{color:[1,0,0], scale:1} ~.5 ~.5 ~.5 .325 .325 .325 1 25");
                break;
              case "black_dye":
                functionValues.get(i).println("execute if block ~ ~ ~ " + id + " if items entity @s weapon.* " + customKey +
                " run particle minecraft:dust{color:[0,0,0], scale:1} ~.5 ~.5 ~.5 .325 .325 .325 1 25");
                break;
            }
            break;
          case "other":
            if (key.equals("bone_meal"))
              functionValues.get(i).println("execute if block ~ ~ ~ " + id + " if items entity @s weapon.* " + key +
                " run particle minecraft:happy_villager ~.5 ~.5 ~.5 .325 .325 .325 1 25");
            else
              functionValues.get(i).println("execute if block ~ ~ ~ " + id + " if items entity @s weapon.* " + customKey +
                " run particle minecraft:item{item:\"" + key + "\"} ~.5 ~.5 ~.5 .35 .35 .35 .01 40");
            functionValues.get(i).println("execute if block ~ ~ ~ " + id + " if items entity @s weapon.* " + customKey +
              " run playsound " + sound + " block @a ~.5 ~.5 ~.5 .5");
            break;
        }
        
        for (int b = 0; b < idBlockStates.size(); b++)
        {
          //Write Main Function
          if (i < keys.size() - 2)
            functionValues.get(i).println("execute if block ~ ~ ~ " + idBlockStates.get(b) +
              " run return run setblock ~ ~ ~ " + convertBlockStates.get(b));
          //Dyes & Other
          else
            functionValues.get(i).println("execute if block ~ ~ ~ " + idBlockStates.get(b) + " if items entity @s weapon.* " + customKey + 
              " run return run setblock ~ ~ ~ " + convertBlockStates.get(b));
        }
        return;
      }
  }
  
  void close()
  {
    for (PrintWriter writer : tagValues)
    {
      writer.println("\n]");
      writer.println("}");
      
      writer.flush();
      writer.close();
    }
    
    for (PrintWriter writer : functionValues)
    {
      writer.flush();
      writer.close();
    }
  }
}
