
void generateLootTable(JSONObject block)
{
  if (block.isNull("breaks_into"))
    return;
  
  BufferedReader lootTableTemplate;
  
  //Get Correct Loot Table
  if (match(block.getString("id"), "_slab") != null)
    lootTableTemplate = createReader("./templates/loot_table_slab.json");
  else if (!block.isNull("loot_type"))
  {
    if (block.getString("loot_type").equals("unobtainable"))
      lootTableTemplate = createReader("./templates/loot_table_unobtainable.json");
    else if (match(block.getString("id"), "_plant") != null)
      lootTableTemplate = createReader("./templates/loot_table_plant.json");
    else if (block.getString("breaks_into").equals("air"))
      lootTableTemplate = createReader("./templates/loot_table_shearable_only.json");
    else
      lootTableTemplate = createReader("./templates/loot_table_shearable.json");
  }
  else
    lootTableTemplate = createReader("./templates/loot_table_breaks_into.json");
  
  //Read, Replace ID's, Write
  PrintWriter lootTable = createWriter("../data/minecraft/loot_table/blocks/" + block.getString("id") + ".json");
  
  String line;

  try
  {
    //Read
    while ((line = lootTableTemplate.readLine()) != null) {
      //Modify
      if (!block.isNull("plant_id"))
        line = stringReplace(line, "NON_PLANT_BLOCK_ID", block.getString("plant_id"));
      line = stringReplace(line, "BREAKS_INTO_BLOCK_ID", block.getString("breaks_into"));
      line = stringReplace(line, "BLOCK_ID", block.getString("id"));
      
      //Write
      lootTable.println(line);
    }
    
    //Close Reader/Writer
    lootTableTemplate.close();
  }
  catch (IOException e)
  {
    e.printStackTrace();
  }
  
  lootTable.flush();
  lootTable.close();
}
