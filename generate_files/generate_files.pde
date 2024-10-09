JSONArray blockRegistery = new JSONArray();

void setup()
{
  
  //Register Variants
  registerDefaultVariants();
  registerCustomVariants();
  registerLootTableVariants();
  
  //Generate Output Data
  loadSubtypes();
  setupGUIFunctions();
  
  for (int b = 0; b < blockRegistery.size(); b++)
  {
    //Custom Modifications
    customRegisteryModifications(blockRegistery.getJSONObject(b));
    
    JSONArray blocks = registerSubtypes(blockRegistery.getJSONObject(b));
    
    for (int i = 0; i < blocks.size(); i++)
    { 
      //Generate Loot Tables
      generateLootTable(blocks.getJSONObject(i));
      
      //Generate Functions
      generateGUIFunction(blocks.getJSONObject(i));
    }
  }
  
  GUIFunctionsDone();
  
  //Output block registery for debugging
  saveJSONArray(blockRegistery, "output/block_registery.json");
  exit();
}

//Useful function for reading and modifying templates
String stringReplace(String str, String from, String to)
{
  String output = "";
  String[] brokenStr = split(str, from);
  
  for (int i = 0; i < brokenStr.length - 1; i++)
    output += brokenStr[i] + to;
  output += brokenStr[brokenStr.length - 1];
  
  return output;
}

void customRegisteryModifications(JSONObject block)
{
  switch (block.getString("id"))
  {
    //Cobblestone can't make stone bricks & add smooth stone to water to custom fire path
    case "cobblestone":
      block.getJSONObject("gui").remove("water_to_waxed");
      block.getJSONObject("gui").getJSONArray("water_to_fire").append("smooth_stone");
      break;
    //Put Smooth Stone into custom fire path
    case "smooth_stone":
      JSONArray stoneFireToWater = new JSONArray();
      stoneFireToWater.append("cobblestone");
      stoneFireToWater.append("stone");
      stoneFireToWater.append("smooth_stone");
      block.getJSONObject("gui").setJSONArray("water_to_fire", stoneFireToWater);
      block.getJSONObject("gui").remove("water_to_waxed");
      break;
    //Smooth Stone Double Slab doesn't exist, only Slab
    case "smooth_stone_double_slab":
      block.remove("breaks_into");
      break;
  }
}
