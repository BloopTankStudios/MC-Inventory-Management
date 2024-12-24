# Auto Generated

advancement revoke @s only brush:has_double_slab

data merge storage inventory:brush {give_items:{id:"dirt"}}
execute store result score slab_count inventory.brush store result score slab_remainder inventory.brush run execute unless entity @s[nbt={Inventory:[{id:"minecraft:mud_brick_slab",count:1}]}] run clear @p mud_brick_slab
execute store result storage inventory:brush give_items.count int 1 run scoreboard players operation slab_count inventory.brush /= 2 inventory.brush
scoreboard players operation slab_remainder inventory.brush %= 2 inventory.brush
execute if score slab_remainder inventory.brush matches 1..1 run give @p mud_brick_slab
execute if score slab_count inventory.brush matches 1.. run return run function brush:inventory/give_items with storage inventory:brush give_items

data merge storage inventory:brush {give_items:{id:"cobblestone"}}
execute store result score slab_count inventory.brush store result score slab_remainder inventory.brush run execute unless entity @s[nbt={Inventory:[{id:"minecraft:cobblestone_slab",count:1}]}] run clear @p cobblestone_slab
execute store result storage inventory:brush give_items.count int 1 run scoreboard players operation slab_count inventory.brush /= 2 inventory.brush
scoreboard players operation slab_remainder inventory.brush %= 2 inventory.brush
execute if score slab_remainder inventory.brush matches 1..1 run give @p cobblestone_slab
execute if score slab_count inventory.brush matches 1.. run return run function brush:inventory/give_items with storage inventory:brush give_items

data merge storage inventory:brush {give_items:{id:"cobbled_deepslate"}}
execute store result score slab_count inventory.brush store result score slab_remainder inventory.brush run execute unless entity @s[nbt={Inventory:[{id:"minecraft:cobbled_deepslate_slab",count:1}]}] run clear @p cobbled_deepslate_slab
execute store result storage inventory:brush give_items.count int 1 run scoreboard players operation slab_count inventory.brush /= 2 inventory.brush
scoreboard players operation slab_remainder inventory.brush %= 2 inventory.brush
execute if score slab_remainder inventory.brush matches 1..1 run give @p cobbled_deepslate_slab
execute if score slab_count inventory.brush matches 1.. run return run function brush:inventory/give_items with storage inventory:brush give_items

data merge storage inventory:brush {give_items:{id:"tuff"}}
execute store result score slab_count inventory.brush store result score slab_remainder inventory.brush run execute unless entity @s[nbt={Inventory:[{id:"minecraft:tuff_slab",count:1}]}] run clear @p tuff_slab
execute store result storage inventory:brush give_items.count int 1 run scoreboard players operation slab_count inventory.brush /= 2 inventory.brush
scoreboard players operation slab_remainder inventory.brush %= 2 inventory.brush
execute if score slab_remainder inventory.brush matches 1..1 run give @p tuff_slab
execute if score slab_count inventory.brush matches 1.. run return run function brush:inventory/give_items with storage inventory:brush give_items

data merge storage inventory:brush {give_items:{id:"sandstone"}}
execute store result score slab_count inventory.brush store result score slab_remainder inventory.brush run execute unless entity @s[nbt={Inventory:[{id:"minecraft:sandstone_slab",count:1}]}] run clear @p sandstone_slab
execute store result storage inventory:brush give_items.count int 1 run scoreboard players operation slab_count inventory.brush /= 2 inventory.brush
scoreboard players operation slab_remainder inventory.brush %= 2 inventory.brush
execute if score slab_remainder inventory.brush matches 1..1 run give @p sandstone_slab
execute if score slab_count inventory.brush matches 1.. run return run function brush:inventory/give_items with storage inventory:brush give_items

data merge storage inventory:brush {give_items:{id:"red_sandstone"}}
execute store result score slab_count inventory.brush store result score slab_remainder inventory.brush run execute unless entity @s[nbt={Inventory:[{id:"minecraft:red_sandstone_slab",count:1}]}] run clear @p red_sandstone_slab
execute store result storage inventory:brush give_items.count int 1 run scoreboard players operation slab_count inventory.brush /= 2 inventory.brush
scoreboard players operation slab_remainder inventory.brush %= 2 inventory.brush
execute if score slab_remainder inventory.brush matches 1..1 run give @p red_sandstone_slab
execute if score slab_count inventory.brush matches 1.. run return run function brush:inventory/give_items with storage inventory:brush give_items

data merge storage inventory:brush {give_items:{id:"prismarine"}}
execute store result score slab_count inventory.brush store result score slab_remainder inventory.brush run execute unless entity @s[nbt={Inventory:[{id:"minecraft:prismarine_slab",count:1}]}] run clear @p prismarine_slab
execute store result storage inventory:brush give_items.count int 1 run scoreboard players operation slab_count inventory.brush /= 2 inventory.brush
scoreboard players operation slab_remainder inventory.brush %= 2 inventory.brush
execute if score slab_remainder inventory.brush matches 1..1 run give @p prismarine_slab
execute if score slab_count inventory.brush matches 1.. run return run function brush:inventory/give_items with storage inventory:brush give_items

data merge storage inventory:brush {give_items:{id:"nether_bricks"}}
execute store result score slab_count inventory.brush store result score slab_remainder inventory.brush run execute unless entity @s[nbt={Inventory:[{id:"minecraft:nether_brick_slab",count:1}]}] run clear @p nether_brick_slab
execute store result storage inventory:brush give_items.count int 1 run scoreboard players operation slab_count inventory.brush /= 2 inventory.brush
scoreboard players operation slab_remainder inventory.brush %= 2 inventory.brush
execute if score slab_remainder inventory.brush matches 1..1 run give @p nether_brick_slab
execute if score slab_count inventory.brush matches 1.. run return run function brush:inventory/give_items with storage inventory:brush give_items

data merge storage inventory:brush {give_items:{id:"blackstone"}}
execute store result score slab_count inventory.brush store result score slab_remainder inventory.brush run execute unless entity @s[nbt={Inventory:[{id:"minecraft:blackstone_slab",count:1}]}] run clear @p blackstone_slab
execute store result storage inventory:brush give_items.count int 1 run scoreboard players operation slab_count inventory.brush /= 2 inventory.brush
scoreboard players operation slab_remainder inventory.brush %= 2 inventory.brush
execute if score slab_remainder inventory.brush matches 1..1 run give @p blackstone_slab
execute if score slab_count inventory.brush matches 1.. run return run function brush:inventory/give_items with storage inventory:brush give_items

data merge storage inventory:brush {give_items:{id:"end_stone"}}
execute store result score slab_count inventory.brush store result score slab_remainder inventory.brush run execute unless entity @s[nbt={Inventory:[{id:"minecraft:end_stone_brick_slab",count:1}]}] run clear @p end_stone_brick_slab
execute store result storage inventory:brush give_items.count int 1 run scoreboard players operation slab_count inventory.brush /= 2 inventory.brush
scoreboard players operation slab_remainder inventory.brush %= 2 inventory.brush
execute if score slab_remainder inventory.brush matches 1..1 run give @p end_stone_brick_slab
execute if score slab_count inventory.brush matches 1.. run return run function brush:inventory/give_items with storage inventory:brush give_items

data merge storage inventory:brush {give_items:{id:"purpur_block"}}
execute store result score slab_count inventory.brush store result score slab_remainder inventory.brush run execute unless entity @s[nbt={Inventory:[{id:"minecraft:purpur_slab",count:1}]}] run clear @p purpur_slab
execute store result storage inventory:brush give_items.count int 1 run scoreboard players operation slab_count inventory.brush /= 2 inventory.brush
scoreboard players operation slab_remainder inventory.brush %= 2 inventory.brush
execute if score slab_remainder inventory.brush matches 1..1 run give @p purpur_slab
execute if score slab_count inventory.brush matches 1.. run return run function brush:inventory/give_items with storage inventory:brush give_items

data merge storage inventory:brush {give_items:{id:"quartz_block"}}
execute store result score slab_count inventory.brush store result score slab_remainder inventory.brush run execute unless entity @s[nbt={Inventory:[{id:"minecraft:quartz_slab",count:1}]}] run clear @p quartz_slab
execute store result storage inventory:brush give_items.count int 1 run scoreboard players operation slab_count inventory.brush /= 2 inventory.brush
scoreboard players operation slab_remainder inventory.brush %= 2 inventory.brush
execute if score slab_remainder inventory.brush matches 1..1 run give @p quartz_slab
execute if score slab_count inventory.brush matches 1.. run return run function brush:inventory/give_items with storage inventory:brush give_items

data merge storage inventory:brush {give_items:{id:"copper_block"}}
execute store result score slab_count inventory.brush store result score slab_remainder inventory.brush run execute unless entity @s[nbt={Inventory:[{id:"minecraft:cut_copper_slab",count:1}]}] run clear @p cut_copper_slab
execute store result storage inventory:brush give_items.count int 1 run scoreboard players operation slab_count inventory.brush /= 2 inventory.brush
scoreboard players operation slab_remainder inventory.brush %= 2 inventory.brush
execute if score slab_remainder inventory.brush matches 1..1 run give @p cut_copper_slab
execute if score slab_count inventory.brush matches 1.. run return run function brush:inventory/give_items with storage inventory:brush give_items

data merge storage inventory:brush {give_items:{id:"exposed_copper"}}
execute store result score slab_count inventory.brush store result score slab_remainder inventory.brush run execute unless entity @s[nbt={Inventory:[{id:"minecraft:exposed_cut_copper_slab",count:1}]}] run clear @p exposed_cut_copper_slab
execute store result storage inventory:brush give_items.count int 1 run scoreboard players operation slab_count inventory.brush /= 2 inventory.brush
scoreboard players operation slab_remainder inventory.brush %= 2 inventory.brush
execute if score slab_remainder inventory.brush matches 1..1 run give @p exposed_cut_copper_slab
execute if score slab_count inventory.brush matches 1.. run return run function brush:inventory/give_items with storage inventory:brush give_items

data merge storage inventory:brush {give_items:{id:"weathered_copper"}}
execute store result score slab_count inventory.brush store result score slab_remainder inventory.brush run execute unless entity @s[nbt={Inventory:[{id:"minecraft:weathered_cut_copper_slab",count:1}]}] run clear @p weathered_cut_copper_slab
execute store result storage inventory:brush give_items.count int 1 run scoreboard players operation slab_count inventory.brush /= 2 inventory.brush
scoreboard players operation slab_remainder inventory.brush %= 2 inventory.brush
execute if score slab_remainder inventory.brush matches 1..1 run give @p weathered_cut_copper_slab
execute if score slab_count inventory.brush matches 1.. run return run function brush:inventory/give_items with storage inventory:brush give_items

data merge storage inventory:brush {give_items:{id:"oxidized_copper"}}
execute store result score slab_count inventory.brush store result score slab_remainder inventory.brush run execute unless entity @s[nbt={Inventory:[{id:"minecraft:oxidized_cut_copper_slab",count:1}]}] run clear @p oxidized_cut_copper_slab
execute store result storage inventory:brush give_items.count int 1 run scoreboard players operation slab_count inventory.brush /= 2 inventory.brush
scoreboard players operation slab_remainder inventory.brush %= 2 inventory.brush
execute if score slab_remainder inventory.brush matches 1..1 run give @p oxidized_cut_copper_slab
execute if score slab_count inventory.brush matches 1.. run return run function brush:inventory/give_items with storage inventory:brush give_items

data merge storage inventory:brush {give_items:{id:"waxed_copper_block"}}
execute store result score slab_count inventory.brush store result score slab_remainder inventory.brush run execute unless entity @s[nbt={Inventory:[{id:"minecraft:waxed_cut_copper_slab",count:1}]}] run clear @p waxed_cut_copper_slab
execute store result storage inventory:brush give_items.count int 1 run scoreboard players operation slab_count inventory.brush /= 2 inventory.brush
scoreboard players operation slab_remainder inventory.brush %= 2 inventory.brush
execute if score slab_remainder inventory.brush matches 1..1 run give @p waxed_cut_copper_slab
execute if score slab_count inventory.brush matches 1.. run return run function brush:inventory/give_items with storage inventory:brush give_items

data merge storage inventory:brush {give_items:{id:"waxed_exposed_copper"}}
execute store result score slab_count inventory.brush store result score slab_remainder inventory.brush run execute unless entity @s[nbt={Inventory:[{id:"minecraft:waxed_exposed_cut_copper_slab",count:1}]}] run clear @p waxed_exposed_cut_copper_slab
execute store result storage inventory:brush give_items.count int 1 run scoreboard players operation slab_count inventory.brush /= 2 inventory.brush
scoreboard players operation slab_remainder inventory.brush %= 2 inventory.brush
execute if score slab_remainder inventory.brush matches 1..1 run give @p waxed_exposed_cut_copper_slab
execute if score slab_count inventory.brush matches 1.. run return run function brush:inventory/give_items with storage inventory:brush give_items

data merge storage inventory:brush {give_items:{id:"waxed_weathered_copper"}}
execute store result score slab_count inventory.brush store result score slab_remainder inventory.brush run execute unless entity @s[nbt={Inventory:[{id:"minecraft:waxed_weathered_cut_copper_slab",count:1}]}] run clear @p waxed_weathered_cut_copper_slab
execute store result storage inventory:brush give_items.count int 1 run scoreboard players operation slab_count inventory.brush /= 2 inventory.brush
scoreboard players operation slab_remainder inventory.brush %= 2 inventory.brush
execute if score slab_remainder inventory.brush matches 1..1 run give @p waxed_weathered_cut_copper_slab
execute if score slab_count inventory.brush matches 1.. run return run function brush:inventory/give_items with storage inventory:brush give_items

data merge storage inventory:brush {give_items:{id:"waxed_oxidized_copper"}}
execute store result score slab_count inventory.brush store result score slab_remainder inventory.brush run execute unless entity @s[nbt={Inventory:[{id:"minecraft:waxed_oxidized_cut_copper_slab",count:1}]}] run clear @p waxed_oxidized_cut_copper_slab
execute store result storage inventory:brush give_items.count int 1 run scoreboard players operation slab_count inventory.brush /= 2 inventory.brush
scoreboard players operation slab_remainder inventory.brush %= 2 inventory.brush
execute if score slab_remainder inventory.brush matches 1..1 run give @p waxed_oxidized_cut_copper_slab
execute if score slab_count inventory.brush matches 1.. run return run function brush:inventory/give_items with storage inventory:brush give_items

data merge storage inventory:brush {give_items:{id:"bamboo_planks"}}
execute store result score slab_count inventory.brush store result score slab_remainder inventory.brush run execute unless entity @s[nbt={Inventory:[{id:"minecraft:bamboo_slab",count:1}]}] run clear @p bamboo_slab
execute store result storage inventory:brush give_items.count int 1 run scoreboard players operation slab_count inventory.brush /= 2 inventory.brush
scoreboard players operation slab_remainder inventory.brush %= 2 inventory.brush
execute if score slab_remainder inventory.brush matches 1..1 run give @p bamboo_slab
execute if score slab_count inventory.brush matches 1.. run return run function brush:inventory/give_items with storage inventory:brush give_items

data merge storage inventory:brush {give_items:{id:"dark_prismarine"}}
execute store result score slab_count inventory.brush store result score slab_remainder inventory.brush run execute unless entity @s[nbt={Inventory:[{id:"minecraft:dark_prismarine_slab",count:1}]}] run clear @p dark_prismarine_slab
execute store result storage inventory:brush give_items.count int 1 run scoreboard players operation slab_count inventory.brush /= 2 inventory.brush
scoreboard players operation slab_remainder inventory.brush %= 2 inventory.brush
execute if score slab_remainder inventory.brush matches 1..1 run give @p dark_prismarine_slab
execute if score slab_count inventory.brush matches 1.. run return run function brush:inventory/give_items with storage inventory:brush give_items

data merge storage inventory:brush {give_items:{id:"red_nether_bricks"}}
execute store result score slab_count inventory.brush store result score slab_remainder inventory.brush run execute unless entity @s[nbt={Inventory:[{id:"minecraft:red_nether_brick_slab",count:1}]}] run clear @p red_nether_brick_slab
execute store result storage inventory:brush give_items.count int 1 run scoreboard players operation slab_count inventory.brush /= 2 inventory.brush
scoreboard players operation slab_remainder inventory.brush %= 2 inventory.brush
execute if score slab_remainder inventory.brush matches 1..1 run give @p red_nether_brick_slab
execute if score slab_count inventory.brush matches 1.. run return run function brush:inventory/give_items with storage inventory:brush give_items

data merge storage inventory:brush {give_items:{id:"bricks"}}
execute store result score slab_count inventory.brush store result score slab_remainder inventory.brush run execute unless entity @s[nbt={Inventory:[{id:"minecraft:brick_slab",count:1}]}] run clear @p brick_slab
execute store result storage inventory:brush give_items.count int 1 run scoreboard players operation slab_count inventory.brush /= 2 inventory.brush
scoreboard players operation slab_remainder inventory.brush %= 2 inventory.brush
execute if score slab_remainder inventory.brush matches 1..1 run give @p brick_slab
execute if score slab_count inventory.brush matches 1.. run return run function brush:inventory/give_items with storage inventory:brush give_items

data merge storage inventory:brush {give_items:{id:"oak_planks"}}
execute store result score slab_count inventory.brush store result score slab_remainder inventory.brush run execute unless entity @s[nbt={Inventory:[{id:"minecraft:oak_slab",count:1}]}] run clear @p oak_slab
execute store result storage inventory:brush give_items.count int 1 run scoreboard players operation slab_count inventory.brush /= 2 inventory.brush
scoreboard players operation slab_remainder inventory.brush %= 2 inventory.brush
execute if score slab_remainder inventory.brush matches 1..1 run give @p oak_slab
execute if score slab_count inventory.brush matches 1.. run return run function brush:inventory/give_items with storage inventory:brush give_items

data merge storage inventory:brush {give_items:{id:"spruce_planks"}}
execute store result score slab_count inventory.brush store result score slab_remainder inventory.brush run execute unless entity @s[nbt={Inventory:[{id:"minecraft:spruce_slab",count:1}]}] run clear @p spruce_slab
execute store result storage inventory:brush give_items.count int 1 run scoreboard players operation slab_count inventory.brush /= 2 inventory.brush
scoreboard players operation slab_remainder inventory.brush %= 2 inventory.brush
execute if score slab_remainder inventory.brush matches 1..1 run give @p spruce_slab
execute if score slab_count inventory.brush matches 1.. run return run function brush:inventory/give_items with storage inventory:brush give_items

data merge storage inventory:brush {give_items:{id:"birch_planks"}}
execute store result score slab_count inventory.brush store result score slab_remainder inventory.brush run execute unless entity @s[nbt={Inventory:[{id:"minecraft:birch_slab",count:1}]}] run clear @p birch_slab
execute store result storage inventory:brush give_items.count int 1 run scoreboard players operation slab_count inventory.brush /= 2 inventory.brush
scoreboard players operation slab_remainder inventory.brush %= 2 inventory.brush
execute if score slab_remainder inventory.brush matches 1..1 run give @p birch_slab
execute if score slab_count inventory.brush matches 1.. run return run function brush:inventory/give_items with storage inventory:brush give_items

data merge storage inventory:brush {give_items:{id:"jungle_planks"}}
execute store result score slab_count inventory.brush store result score slab_remainder inventory.brush run execute unless entity @s[nbt={Inventory:[{id:"minecraft:jungle_slab",count:1}]}] run clear @p jungle_slab
execute store result storage inventory:brush give_items.count int 1 run scoreboard players operation slab_count inventory.brush /= 2 inventory.brush
scoreboard players operation slab_remainder inventory.brush %= 2 inventory.brush
execute if score slab_remainder inventory.brush matches 1..1 run give @p jungle_slab
execute if score slab_count inventory.brush matches 1.. run return run function brush:inventory/give_items with storage inventory:brush give_items

data merge storage inventory:brush {give_items:{id:"acacia_planks"}}
execute store result score slab_count inventory.brush store result score slab_remainder inventory.brush run execute unless entity @s[nbt={Inventory:[{id:"minecraft:acacia_slab",count:1}]}] run clear @p acacia_slab
execute store result storage inventory:brush give_items.count int 1 run scoreboard players operation slab_count inventory.brush /= 2 inventory.brush
scoreboard players operation slab_remainder inventory.brush %= 2 inventory.brush
execute if score slab_remainder inventory.brush matches 1..1 run give @p acacia_slab
execute if score slab_count inventory.brush matches 1.. run return run function brush:inventory/give_items with storage inventory:brush give_items

data merge storage inventory:brush {give_items:{id:"dark_oak_planks"}}
execute store result score slab_count inventory.brush store result score slab_remainder inventory.brush run execute unless entity @s[nbt={Inventory:[{id:"minecraft:dark_oak_slab",count:1}]}] run clear @p dark_oak_slab
execute store result storage inventory:brush give_items.count int 1 run scoreboard players operation slab_count inventory.brush /= 2 inventory.brush
scoreboard players operation slab_remainder inventory.brush %= 2 inventory.brush
execute if score slab_remainder inventory.brush matches 1..1 run give @p dark_oak_slab
execute if score slab_count inventory.brush matches 1.. run return run function brush:inventory/give_items with storage inventory:brush give_items

data merge storage inventory:brush {give_items:{id:"mangrove_planks"}}
execute store result score slab_count inventory.brush store result score slab_remainder inventory.brush run execute unless entity @s[nbt={Inventory:[{id:"minecraft:mangrove_slab",count:1}]}] run clear @p mangrove_slab
execute store result storage inventory:brush give_items.count int 1 run scoreboard players operation slab_count inventory.brush /= 2 inventory.brush
scoreboard players operation slab_remainder inventory.brush %= 2 inventory.brush
execute if score slab_remainder inventory.brush matches 1..1 run give @p mangrove_slab
execute if score slab_count inventory.brush matches 1.. run return run function brush:inventory/give_items with storage inventory:brush give_items

data merge storage inventory:brush {give_items:{id:"cherry_planks"}}
execute store result score slab_count inventory.brush store result score slab_remainder inventory.brush run execute unless entity @s[nbt={Inventory:[{id:"minecraft:cherry_slab",count:1}]}] run clear @p cherry_slab
execute store result storage inventory:brush give_items.count int 1 run scoreboard players operation slab_count inventory.brush /= 2 inventory.brush
scoreboard players operation slab_remainder inventory.brush %= 2 inventory.brush
execute if score slab_remainder inventory.brush matches 1..1 run give @p cherry_slab
execute if score slab_count inventory.brush matches 1.. run return run function brush:inventory/give_items with storage inventory:brush give_items

data merge storage inventory:brush {give_items:{id:"crimson_planks"}}
execute store result score slab_count inventory.brush store result score slab_remainder inventory.brush run execute unless entity @s[nbt={Inventory:[{id:"minecraft:crimson_slab",count:1}]}] run clear @p crimson_slab
execute store result storage inventory:brush give_items.count int 1 run scoreboard players operation slab_count inventory.brush /= 2 inventory.brush
scoreboard players operation slab_remainder inventory.brush %= 2 inventory.brush
execute if score slab_remainder inventory.brush matches 1..1 run give @p crimson_slab
execute if score slab_count inventory.brush matches 1.. run return run function brush:inventory/give_items with storage inventory:brush give_items

data merge storage inventory:brush {give_items:{id:"warped_planks"}}
execute store result score slab_count inventory.brush store result score slab_remainder inventory.brush run execute unless entity @s[nbt={Inventory:[{id:"minecraft:warped_slab",count:1}]}] run clear @p warped_slab
execute store result storage inventory:brush give_items.count int 1 run scoreboard players operation slab_count inventory.brush /= 2 inventory.brush
scoreboard players operation slab_remainder inventory.brush %= 2 inventory.brush
execute if score slab_remainder inventory.brush matches 1..1 run give @p warped_slab
execute if score slab_count inventory.brush matches 1.. run return run function brush:inventory/give_items with storage inventory:brush give_items

