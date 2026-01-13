
String[] allLogTypes = new String[] { "oak", "spruce", "birch", "jungle", "acacia", "dark_oak", "mangrove", "cherry", "crimson", "warped", "bamboo"};


// Generate Function Files that may be tedious but do not have a variant list
void generateAuxFiles()
{
  resetConsumables();
  resetVariantBlocks();
  woodRecipes();
}

void resetConsumables()
{
  PrintWriter functionFile = createWriter("../data/brush/function/inventory/reset_consumables.mcfunction");
  functionFile.println("# Auto Generated");
  functionFile.println();
  functionFile.println("advancement revoke @s only brush:has_consumable");
  functionFile.println();
  
  //Water Bottle
  String function = "execute if items entity @s PLAYER_SLOT minecraft:debug_stick[minecraft:custom_model_data=1] run return run " +
    "item replace entity @s PLAYER_SLOT with minecraft:potion[minecraft:potion_contents={potion:\"water\"}]";
  
  functionFile.println(stringReplace(function, "PLAYER_SLOT", "player.cursor"));
  functionFile.println(stringReplace(function, "PLAYER_SLOT", "weapon.offhand"));
    
  for (int i = 0; i < 36; i++)
    functionFile.println(stringReplace(function, "PLAYER_SLOT", "container." + i));
  
  functionFile.println();
  
  //Chorus Fruit
  function = "execute if items entity @s PLAYER_SLOT minecraft:chorus_fruit[custom_data={removed_consume:true}] run item modify entity @s PLAYER_SLOT {function:\"set_components\",components:" + 
    "{\"food\":{\"nutrition\": 4, \"saturation\": 2.4, \"can_always_eat\": true},\"custom_data\":{\"removed_consume\":false}}}";
    
  //functionFile.println("data merge storage inventory:brush {replace_item:{id:\"minecraft:chorus_fruit\"}}");
  functionFile.println(stringReplace(function, "PLAYER_SLOT", "player.cursor"));
  functionFile.println(stringReplace(function, "PLAYER_SLOT", "weapon.offhand"));
    
  for (int i = 0; i < 36; i++)
    functionFile.println(stringReplace(function, "PLAYER_SLOT", "container." + i));
    
  functionFile.flush();
  functionFile.close();
}

void resetVariantBlocks()
{
  PrintWriter functionFile = createWriter("../data/brush/function/inventory/reset_variant_blocks.mcfunction");
  functionFile.println("# Auto Generated");
  functionFile.println();
  functionFile.println("advancement revoke @s only brush:has_variant_block");
  functionFile.println();
  
  String function = "execute if items entity @s PLAYER_SLOT #brush:variant_item[custom_data] run return run function brush:inventory/reset_variant_blocks_slot {slot:\"PLAYER_SLOT\"}";
  
  functionFile.println(stringReplace(function, "PLAYER_SLOT", "player.cursor"));
  functionFile.println(stringReplace(function, "PLAYER_SLOT", "weapon.offhand"));
    
  for (int i = 0; i < 36; i++)
    functionFile.println(stringReplace(function, "PLAYER_SLOT", "container." + i));
    
  functionFile.flush();
  functionFile.close();
}

void woodRecipes()
{
  BufferedReader recipeTemplate = createReader("./templates/wood_hanging_sign.json");
  
  PrintWriter[] woodRecipe = new PrintWriter[allLogTypes.length];
  
  for (int i = 0; i < allLogTypes.length; i++)
    woodRecipe[i] = createWriter("../data/minecraft/recipe/" + allLogTypes[i] + "_hanging_sign.json");
  
    //Read, Replace ID's, Write
  
  String line;

  try
  {
    //Read
    while ((line = recipeTemplate.readLine()) != null) {
      for (int i = 0; i < allLogTypes.length; i++)
      {
        //Modify & Write
        woodRecipe[i].println(stringReplace(line, "wood", allLogTypes[i]));
      }
    }
    
    //Close Reader/Writer
    recipeTemplate.close();
  }
  catch (IOException e)
  {
    e.printStackTrace();
  }
  
  for (int i = 0; i < allLogTypes.length; i++)
  {
    woodRecipe[i].flush();
    woodRecipe[i].close();
  }

}
