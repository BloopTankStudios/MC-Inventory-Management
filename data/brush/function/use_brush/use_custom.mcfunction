# Auto Generated

execute if block ~ ~ ~ mud if items entity @s weapon.* wheat run particle minecraft:item{item:"wheat"} ~.5 ~.5 ~.5 .35 .35 .35 .01 40
execute if block ~ ~ ~ mud if items entity @s weapon.* wheat run playsound block.packed_mud.place block @a ~.5 ~.5 ~.5 .5
execute if block ~ ~ ~ mud if items entity @s weapon.* wheat run return run setblock ~ ~ ~ packed_mud
execute if block ~ ~ ~ mud if items entity @s weapon.* stick run particle minecraft:item{item:"stick"} ~.5 ~.5 ~.5 .35 .35 .35 .01 40
execute if block ~ ~ ~ mud if items entity @s weapon.* stick run playsound block.muddy_mangrove_roots.place block @a ~.5 ~.5 ~.5 .5
execute if block ~ ~ ~ mud if items entity @s weapon.* stick run return run setblock ~ ~ ~ muddy_mangrove_roots
execute if block ~ ~ ~ dirt if items entity @s weapon.* bone_meal run particle minecraft:happy_villager ~.5 ~.5 ~.5 .325 .325 .325 1 25
execute if block ~ ~ ~ dirt if items entity @s weapon.* bone_meal run playsound block.rooted_dirt.place block @a ~.5 ~.5 ~.5 .5
execute if block ~ ~ ~ dirt if items entity @s weapon.* bone_meal run return run setblock ~ ~ ~ rooted_dirt
execute if block ~ ~ ~ cobblestone if items entity @s weapon.* quartz run particle minecraft:item{item:"quartz"} ~.5 ~.5 ~.5 .35 .35 .35 .01 40
execute if block ~ ~ ~ cobblestone if items entity @s weapon.* quartz run playsound block.stone.place block @a ~.5 ~.5 ~.5 .5
execute if block ~ ~ ~ cobblestone if items entity @s weapon.* quartz run return run setblock ~ ~ ~ andesite
execute if block ~ ~ ~ cobblestone if items entity @s weapon.* moss_block run particle minecraft:item{item:"moss_block"} ~.5 ~.5 ~.5 .35 .35 .35 .01 40
execute if block ~ ~ ~ cobblestone if items entity @s weapon.* moss_block run playsound block.moss.place block @a ~.5 ~.5 ~.5 .5
execute if block ~ ~ ~ cobblestone if items entity @s weapon.* moss_block run return run setblock ~ ~ ~ mossy_cobblestone
execute if block ~ ~ ~ stone_bricks if items entity @s weapon.* moss_block run particle minecraft:item{item:"moss_block"} ~.5 ~.5 ~.5 .35 .35 .35 .01 40
execute if block ~ ~ ~ stone_bricks if items entity @s weapon.* moss_block run playsound block.moss.place block @a ~.5 ~.5 ~.5 .5
execute if block ~ ~ ~ stone_bricks if items entity @s weapon.* moss_block run return run setblock ~ ~ ~ mossy_stone_bricks
execute if block ~ ~ ~ diorite if items entity @s weapon.* quartz run particle minecraft:item{item:"quartz"} ~.5 ~.5 ~.5 .35 .35 .35 .01 40
execute if block ~ ~ ~ diorite if items entity @s weapon.* quartz run playsound block.stone.place block @a ~.5 ~.5 ~.5 .5
execute if block ~ ~ ~ diorite if items entity @s weapon.* quartz run return run setblock ~ ~ ~ granite
execute if block ~ ~ ~ andesite if items entity @s weapon.* quartz run particle minecraft:item{item:"quartz"} ~.5 ~.5 ~.5 .35 .35 .35 .01 40
execute if block ~ ~ ~ andesite if items entity @s weapon.* quartz run playsound block.stone.place block @a ~.5 ~.5 ~.5 .5
execute if block ~ ~ ~ andesite if items entity @s weapon.* quartz run return run setblock ~ ~ ~ diorite
execute if block ~ ~ ~ nether_bricks if items entity @s weapon.* nether_wart run particle minecraft:item{item:"nether_wart"} ~.5 ~.5 ~.5 .35 .35 .35 .01 40
execute if block ~ ~ ~ nether_bricks if items entity @s weapon.* nether_wart run playsound block.nether_bricks.place block @a ~.5 ~.5 ~.5 .5
execute if block ~ ~ ~ nether_bricks if items entity @s weapon.* nether_wart run return run setblock ~ ~ ~ red_nether_bricks
execute if block ~ ~ ~ end_stone_bricks if items entity @s weapon.* minecraft:debug_stick[minecraft:custom_model_data=2] run particle minecraft:item{item:"chorus_fruit"} ~.5 ~.5 ~.5 .35 .35 .35 .01 40
execute if block ~ ~ ~ end_stone_bricks if items entity @s weapon.* minecraft:debug_stick[minecraft:custom_model_data=2] run playsound item.crop.plant block @a ~.5 ~.5 ~.5 .5
execute if block ~ ~ ~ end_stone_bricks if items entity @s weapon.* minecraft:debug_stick[minecraft:custom_model_data=2] run return run setblock ~ ~ ~ purpur_block
execute if block ~ ~ ~ oak_log if items entity @s weapon.* stick run particle minecraft:item{item:"stick"} ~.5 ~.5 ~.5 .35 .35 .35 .01 40
execute if block ~ ~ ~ oak_log if items entity @s weapon.* stick run playsound block.wood.place block @a ~.5 ~.5 ~.5 .5
execute if block ~ ~ ~ oak_log[axis=x] if items entity @s weapon.* stick run return run setblock ~ ~ ~ oak_wood[axis=x]
execute if block ~ ~ ~ oak_log[axis=y] if items entity @s weapon.* stick run return run setblock ~ ~ ~ oak_wood[axis=y]
execute if block ~ ~ ~ oak_log[axis=z] if items entity @s weapon.* stick run return run setblock ~ ~ ~ oak_wood[axis=z]
execute if block ~ ~ ~ spruce_log if items entity @s weapon.* stick run particle minecraft:item{item:"stick"} ~.5 ~.5 ~.5 .35 .35 .35 .01 40
execute if block ~ ~ ~ spruce_log if items entity @s weapon.* stick run playsound block.wood.place block @a ~.5 ~.5 ~.5 .5
execute if block ~ ~ ~ spruce_log[axis=x] if items entity @s weapon.* stick run return run setblock ~ ~ ~ spruce_wood[axis=x]
execute if block ~ ~ ~ spruce_log[axis=y] if items entity @s weapon.* stick run return run setblock ~ ~ ~ spruce_wood[axis=y]
execute if block ~ ~ ~ spruce_log[axis=z] if items entity @s weapon.* stick run return run setblock ~ ~ ~ spruce_wood[axis=z]
execute if block ~ ~ ~ birch_log if items entity @s weapon.* stick run particle minecraft:item{item:"stick"} ~.5 ~.5 ~.5 .35 .35 .35 .01 40
execute if block ~ ~ ~ birch_log if items entity @s weapon.* stick run playsound block.wood.place block @a ~.5 ~.5 ~.5 .5
execute if block ~ ~ ~ birch_log[axis=x] if items entity @s weapon.* stick run return run setblock ~ ~ ~ birch_wood[axis=x]
execute if block ~ ~ ~ birch_log[axis=y] if items entity @s weapon.* stick run return run setblock ~ ~ ~ birch_wood[axis=y]
execute if block ~ ~ ~ birch_log[axis=z] if items entity @s weapon.* stick run return run setblock ~ ~ ~ birch_wood[axis=z]
execute if block ~ ~ ~ jungle_log if items entity @s weapon.* stick run particle minecraft:item{item:"stick"} ~.5 ~.5 ~.5 .35 .35 .35 .01 40
execute if block ~ ~ ~ jungle_log if items entity @s weapon.* stick run playsound block.wood.place block @a ~.5 ~.5 ~.5 .5
execute if block ~ ~ ~ jungle_log[axis=x] if items entity @s weapon.* stick run return run setblock ~ ~ ~ jungle_wood[axis=x]
execute if block ~ ~ ~ jungle_log[axis=y] if items entity @s weapon.* stick run return run setblock ~ ~ ~ jungle_wood[axis=y]
execute if block ~ ~ ~ jungle_log[axis=z] if items entity @s weapon.* stick run return run setblock ~ ~ ~ jungle_wood[axis=z]
execute if block ~ ~ ~ acacia_log if items entity @s weapon.* stick run particle minecraft:item{item:"stick"} ~.5 ~.5 ~.5 .35 .35 .35 .01 40
execute if block ~ ~ ~ acacia_log if items entity @s weapon.* stick run playsound block.wood.place block @a ~.5 ~.5 ~.5 .5
execute if block ~ ~ ~ acacia_log[axis=x] if items entity @s weapon.* stick run return run setblock ~ ~ ~ acacia_wood[axis=x]
execute if block ~ ~ ~ acacia_log[axis=y] if items entity @s weapon.* stick run return run setblock ~ ~ ~ acacia_wood[axis=y]
execute if block ~ ~ ~ acacia_log[axis=z] if items entity @s weapon.* stick run return run setblock ~ ~ ~ acacia_wood[axis=z]
execute if block ~ ~ ~ dark_oak_log if items entity @s weapon.* stick run particle minecraft:item{item:"stick"} ~.5 ~.5 ~.5 .35 .35 .35 .01 40
execute if block ~ ~ ~ dark_oak_log if items entity @s weapon.* stick run playsound block.wood.place block @a ~.5 ~.5 ~.5 .5
execute if block ~ ~ ~ dark_oak_log[axis=x] if items entity @s weapon.* stick run return run setblock ~ ~ ~ dark_oak_wood[axis=x]
execute if block ~ ~ ~ dark_oak_log[axis=y] if items entity @s weapon.* stick run return run setblock ~ ~ ~ dark_oak_wood[axis=y]
execute if block ~ ~ ~ dark_oak_log[axis=z] if items entity @s weapon.* stick run return run setblock ~ ~ ~ dark_oak_wood[axis=z]
execute if block ~ ~ ~ mangrove_log if items entity @s weapon.* stick run particle minecraft:item{item:"stick"} ~.5 ~.5 ~.5 .35 .35 .35 .01 40
execute if block ~ ~ ~ mangrove_log if items entity @s weapon.* stick run playsound block.wood.place block @a ~.5 ~.5 ~.5 .5
execute if block ~ ~ ~ mangrove_log[axis=x] if items entity @s weapon.* stick run return run setblock ~ ~ ~ mangrove_wood[axis=x]
execute if block ~ ~ ~ mangrove_log[axis=y] if items entity @s weapon.* stick run return run setblock ~ ~ ~ mangrove_wood[axis=y]
execute if block ~ ~ ~ mangrove_log[axis=z] if items entity @s weapon.* stick run return run setblock ~ ~ ~ mangrove_wood[axis=z]
execute if block ~ ~ ~ cherry_log if items entity @s weapon.* stick run particle minecraft:item{item:"stick"} ~.5 ~.5 ~.5 .35 .35 .35 .01 40
execute if block ~ ~ ~ cherry_log if items entity @s weapon.* stick run playsound block.wood.place block @a ~.5 ~.5 ~.5 .5
execute if block ~ ~ ~ cherry_log[axis=x] if items entity @s weapon.* stick run return run setblock ~ ~ ~ cherry_wood[axis=x]
execute if block ~ ~ ~ cherry_log[axis=y] if items entity @s weapon.* stick run return run setblock ~ ~ ~ cherry_wood[axis=y]
execute if block ~ ~ ~ cherry_log[axis=z] if items entity @s weapon.* stick run return run setblock ~ ~ ~ cherry_wood[axis=z]
execute if block ~ ~ ~ crimson_stem if items entity @s weapon.* stick run particle minecraft:item{item:"stick"} ~.5 ~.5 ~.5 .35 .35 .35 .01 40
execute if block ~ ~ ~ crimson_stem if items entity @s weapon.* stick run playsound block.stem.place block @a ~.5 ~.5 ~.5 .5
execute if block ~ ~ ~ crimson_stem[axis=x] if items entity @s weapon.* stick run return run setblock ~ ~ ~ crimson_hyphae[axis=x]
execute if block ~ ~ ~ crimson_stem[axis=y] if items entity @s weapon.* stick run return run setblock ~ ~ ~ crimson_hyphae[axis=y]
execute if block ~ ~ ~ crimson_stem[axis=z] if items entity @s weapon.* stick run return run setblock ~ ~ ~ crimson_hyphae[axis=z]
execute if block ~ ~ ~ warped_stem if items entity @s weapon.* stick run particle minecraft:item{item:"stick"} ~.5 ~.5 ~.5 .35 .35 .35 .01 40
execute if block ~ ~ ~ warped_stem if items entity @s weapon.* stick run playsound block.stem.place block @a ~.5 ~.5 ~.5 .5
execute if block ~ ~ ~ warped_stem[axis=x] if items entity @s weapon.* stick run return run setblock ~ ~ ~ warped_hyphae[axis=x]
execute if block ~ ~ ~ warped_stem[axis=y] if items entity @s weapon.* stick run return run setblock ~ ~ ~ warped_hyphae[axis=y]
execute if block ~ ~ ~ warped_stem[axis=z] if items entity @s weapon.* stick run return run setblock ~ ~ ~ warped_hyphae[axis=z]
execute if block ~ ~ ~ bamboo_planks if items entity @s weapon.* bamboo run particle minecraft:item{item:"bamboo"} ~.5 ~.5 ~.5 .35 .35 .35 .01 40
execute if block ~ ~ ~ bamboo_planks if items entity @s weapon.* bamboo run playsound block.bamboo_wood.place block @a ~.5 ~.5 ~.5 .5
execute if block ~ ~ ~ bamboo_planks if items entity @s weapon.* bamboo run return run setblock ~ ~ ~ bamboo_mosaic
execute if block ~ ~ ~ gravel if items entity @s weapon.* quartz run particle minecraft:item{item:"quartz"} ~.5 ~.5 ~.5 .35 .35 .35 .01 40
execute if block ~ ~ ~ gravel if items entity @s weapon.* quartz run playsound block.stone.place block @a ~.5 ~.5 ~.5 .5
execute if block ~ ~ ~ gravel if items entity @s weapon.* quartz run return run setblock ~ ~ ~ cobblestone
