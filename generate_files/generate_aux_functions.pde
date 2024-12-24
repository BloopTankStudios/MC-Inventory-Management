
// Generate Function Files that may be tedious but do not have a variant list
void generateAuxFiles()
{
  resetConsumables();
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
