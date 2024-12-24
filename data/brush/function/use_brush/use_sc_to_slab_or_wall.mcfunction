# Auto Generated

execute if block ~ ~ ~ mud_brick_stairs run particle minecraft:block{block_state:"mud_brick_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ mud_brick_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:mud_brick_slab",count:1}}
$execute if block ~ ~ ~ mud_brick_stairs[half=$(half)] run return run setblock ~ ~ ~ mud_brick_slab[type=$(half)]
execute if block ~ ~ ~ mud_brick_stairs run return run setblock ~ ~ ~ mud_brick_wall
execute if block ~ ~ ~ cobblestone_stairs run particle minecraft:block{block_state:"cobblestone_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ cobblestone_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone_slab",count:1}}
$execute if block ~ ~ ~ cobblestone_stairs[half=$(half)] run return run setblock ~ ~ ~ cobblestone_slab[type=$(half)]
execute if block ~ ~ ~ cobblestone_stairs run return run setblock ~ ~ ~ cobblestone_wall
execute if block ~ ~ ~ mossy_cobblestone_stairs run particle minecraft:block{block_state:"mossy_cobblestone_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ mossy_cobblestone_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone_slab",count:1}}
$execute if block ~ ~ ~ mossy_cobblestone_stairs[half=$(half)] run return run setblock ~ ~ ~ mossy_cobblestone_slab[type=$(half)]
execute if block ~ ~ ~ mossy_cobblestone_stairs run return run setblock ~ ~ ~ mossy_cobblestone_wall
execute if block ~ ~ ~ stone_stairs run particle minecraft:block{block_state:"stone_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ stone_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone_slab",count:1}}
execute if block ~ ~ ~ stone_stairs[half=top] run return run setblock ~ ~ ~ stone_slab[type=top]
execute if block ~ ~ ~ stone_stairs[half=bottom] run return run setblock ~ ~ ~ stone_slab[type=bottom]
execute if block ~ ~ ~ stone_brick_stairs run particle minecraft:block{block_state:"stone_brick_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ stone_brick_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone_slab",count:1}}
$execute if block ~ ~ ~ stone_brick_stairs[half=$(half)] run return run setblock ~ ~ ~ stone_brick_slab[type=$(half)]
execute if block ~ ~ ~ stone_brick_stairs run return run setblock ~ ~ ~ stone_brick_wall
execute if block ~ ~ ~ mossy_stone_brick_stairs run particle minecraft:block{block_state:"mossy_stone_brick_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ mossy_stone_brick_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone_slab",count:1}}
$execute if block ~ ~ ~ mossy_stone_brick_stairs[half=$(half)] run return run setblock ~ ~ ~ mossy_stone_brick_slab[type=$(half)]
execute if block ~ ~ ~ mossy_stone_brick_stairs run return run setblock ~ ~ ~ mossy_stone_brick_wall
execute if block ~ ~ ~ smooth_stone run particle minecraft:block{block_state:"smooth_stone"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ smooth_stone at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone_slab",count:1}}
$execute if block ~ ~ ~ smooth_stone run return run setblock ~ ~ ~ smooth_stone_slab[type=$(half)]
execute if block ~ ~ ~ granite_stairs run particle minecraft:block{block_state:"granite_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ granite_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone_slab",count:1}}
$execute if block ~ ~ ~ granite_stairs[half=$(half)] run return run setblock ~ ~ ~ granite_slab[type=$(half)]
execute if block ~ ~ ~ granite_stairs run return run setblock ~ ~ ~ granite_wall
execute if block ~ ~ ~ polished_granite_stairs run particle minecraft:block{block_state:"polished_granite_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ polished_granite_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone_slab",count:1}}
execute if block ~ ~ ~ polished_granite_stairs[half=top] run return run setblock ~ ~ ~ polished_granite_slab[type=top]
execute if block ~ ~ ~ polished_granite_stairs[half=bottom] run return run setblock ~ ~ ~ polished_granite_slab[type=bottom]
execute if block ~ ~ ~ diorite_stairs run particle minecraft:block{block_state:"diorite_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ diorite_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone_slab",count:1}}
$execute if block ~ ~ ~ diorite_stairs[half=$(half)] run return run setblock ~ ~ ~ diorite_slab[type=$(half)]
execute if block ~ ~ ~ diorite_stairs run return run setblock ~ ~ ~ diorite_wall
execute if block ~ ~ ~ polished_diorite_stairs run particle minecraft:block{block_state:"polished_diorite_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ polished_diorite_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone_slab",count:1}}
execute if block ~ ~ ~ polished_diorite_stairs[half=top] run return run setblock ~ ~ ~ polished_diorite_slab[type=top]
execute if block ~ ~ ~ polished_diorite_stairs[half=bottom] run return run setblock ~ ~ ~ polished_diorite_slab[type=bottom]
execute if block ~ ~ ~ andesite_stairs run particle minecraft:block{block_state:"andesite_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ andesite_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone_slab",count:1}}
$execute if block ~ ~ ~ andesite_stairs[half=$(half)] run return run setblock ~ ~ ~ andesite_slab[type=$(half)]
execute if block ~ ~ ~ andesite_stairs run return run setblock ~ ~ ~ andesite_wall
execute if block ~ ~ ~ polished_andesite_stairs run particle minecraft:block{block_state:"polished_andesite_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ polished_andesite_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone_slab",count:1}}
execute if block ~ ~ ~ polished_andesite_stairs[half=top] run return run setblock ~ ~ ~ polished_andesite_slab[type=top]
execute if block ~ ~ ~ polished_andesite_stairs[half=bottom] run return run setblock ~ ~ ~ polished_andesite_slab[type=bottom]
execute if block ~ ~ ~ cobbled_deepslate_stairs run particle minecraft:block{block_state:"cobbled_deepslate_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ cobbled_deepslate_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:cobbled_deepslate_slab",count:1}}
$execute if block ~ ~ ~ cobbled_deepslate_stairs[half=$(half)] run return run setblock ~ ~ ~ cobbled_deepslate_slab[type=$(half)]
execute if block ~ ~ ~ cobbled_deepslate_stairs run return run setblock ~ ~ ~ cobbled_deepslate_wall
execute if block ~ ~ ~ polished_deepslate_stairs run particle minecraft:block{block_state:"polished_deepslate_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ polished_deepslate_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:cobbled_deepslate_slab",count:1}}
$execute if block ~ ~ ~ polished_deepslate_stairs[half=$(half)] run return run setblock ~ ~ ~ polished_deepslate_slab[type=$(half)]
execute if block ~ ~ ~ polished_deepslate_stairs run return run setblock ~ ~ ~ polished_deepslate_wall
execute if block ~ ~ ~ deepslate_brick_stairs run particle minecraft:block{block_state:"deepslate_brick_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ deepslate_brick_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:cobbled_deepslate_slab",count:1}}
$execute if block ~ ~ ~ deepslate_brick_stairs[half=$(half)] run return run setblock ~ ~ ~ deepslate_brick_slab[type=$(half)]
execute if block ~ ~ ~ deepslate_brick_stairs run return run setblock ~ ~ ~ deepslate_brick_wall
execute if block ~ ~ ~ deepslate_tile_stairs run particle minecraft:block{block_state:"deepslate_tile_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ deepslate_tile_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:cobbled_deepslate_slab",count:1}}
$execute if block ~ ~ ~ deepslate_tile_stairs[half=$(half)] run return run setblock ~ ~ ~ deepslate_tile_slab[type=$(half)]
execute if block ~ ~ ~ deepslate_tile_stairs run return run setblock ~ ~ ~ deepslate_tile_wall
execute if block ~ ~ ~ tuff_stairs run particle minecraft:block{block_state:"tuff_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ tuff_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:tuff_slab",count:1}}
$execute if block ~ ~ ~ tuff_stairs[half=$(half)] run return run setblock ~ ~ ~ tuff_slab[type=$(half)]
execute if block ~ ~ ~ tuff_stairs run return run setblock ~ ~ ~ tuff_wall
execute if block ~ ~ ~ polished_tuff_stairs run particle minecraft:block{block_state:"polished_tuff_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ polished_tuff_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:tuff_slab",count:1}}
$execute if block ~ ~ ~ polished_tuff_stairs[half=$(half)] run return run setblock ~ ~ ~ polished_tuff_slab[type=$(half)]
execute if block ~ ~ ~ polished_tuff_stairs run return run setblock ~ ~ ~ polished_tuff_wall
execute if block ~ ~ ~ tuff_brick_stairs run particle minecraft:block{block_state:"tuff_brick_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ tuff_brick_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:tuff_slab",count:1}}
$execute if block ~ ~ ~ tuff_brick_stairs[half=$(half)] run return run setblock ~ ~ ~ tuff_brick_slab[type=$(half)]
execute if block ~ ~ ~ tuff_brick_stairs run return run setblock ~ ~ ~ tuff_brick_wall
execute if block ~ ~ ~ sandstone_stairs run particle minecraft:block{block_state:"sandstone_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ sandstone_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:sandstone_slab",count:1}}
$execute if block ~ ~ ~ sandstone_stairs[half=$(half)] run return run setblock ~ ~ ~ sandstone_slab[type=$(half)]
execute if block ~ ~ ~ sandstone_stairs run return run setblock ~ ~ ~ sandstone_wall
execute if block ~ ~ ~ smooth_sandstone_stairs run particle minecraft:block{block_state:"smooth_sandstone_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ smooth_sandstone_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:sandstone_slab",count:1}}
execute if block ~ ~ ~ smooth_sandstone_stairs[half=top] run return run setblock ~ ~ ~ smooth_sandstone_slab[type=top]
execute if block ~ ~ ~ smooth_sandstone_stairs[half=bottom] run return run setblock ~ ~ ~ smooth_sandstone_slab[type=bottom]
execute if block ~ ~ ~ cut_sandstone run particle minecraft:block{block_state:"cut_sandstone"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ cut_sandstone at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:sandstone_slab",count:1}}
$execute if block ~ ~ ~ cut_sandstone run return run setblock ~ ~ ~ cut_sandstone_slab[type=$(half)]
execute if block ~ ~ ~ red_sandstone_stairs run particle minecraft:block{block_state:"red_sandstone_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ red_sandstone_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:red_sandstone_slab",count:1}}
$execute if block ~ ~ ~ red_sandstone_stairs[half=$(half)] run return run setblock ~ ~ ~ red_sandstone_slab[type=$(half)]
execute if block ~ ~ ~ red_sandstone_stairs run return run setblock ~ ~ ~ red_sandstone_wall
execute if block ~ ~ ~ smooth_red_sandstone_stairs run particle minecraft:block{block_state:"smooth_red_sandstone_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ smooth_red_sandstone_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:red_sandstone_slab",count:1}}
execute if block ~ ~ ~ smooth_red_sandstone_stairs[half=top] run return run setblock ~ ~ ~ smooth_red_sandstone_slab[type=top]
execute if block ~ ~ ~ smooth_red_sandstone_stairs[half=bottom] run return run setblock ~ ~ ~ smooth_red_sandstone_slab[type=bottom]
execute if block ~ ~ ~ cut_red_sandstone run particle minecraft:block{block_state:"cut_red_sandstone"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ cut_red_sandstone at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:red_sandstone_slab",count:1}}
$execute if block ~ ~ ~ cut_red_sandstone run return run setblock ~ ~ ~ cut_red_sandstone_slab[type=$(half)]
execute if block ~ ~ ~ prismarine_stairs run particle minecraft:block{block_state:"prismarine_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ prismarine_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:prismarine_slab",count:1}}
$execute if block ~ ~ ~ prismarine_stairs[half=$(half)] run return run setblock ~ ~ ~ prismarine_slab[type=$(half)]
execute if block ~ ~ ~ prismarine_stairs run return run setblock ~ ~ ~ prismarine_wall
execute if block ~ ~ ~ prismarine_brick_stairs run particle minecraft:block{block_state:"prismarine_brick_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ prismarine_brick_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:prismarine_slab",count:1}}
execute if block ~ ~ ~ prismarine_brick_stairs[half=top] run return run setblock ~ ~ ~ prismarine_brick_slab[type=top]
execute if block ~ ~ ~ prismarine_brick_stairs[half=bottom] run return run setblock ~ ~ ~ prismarine_brick_slab[type=bottom]
execute if block ~ ~ ~ nether_brick_stairs run particle minecraft:block{block_state:"nether_brick_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ nether_brick_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:nether_brick_slab",count:1}}
$execute if block ~ ~ ~ nether_brick_stairs[half=$(half)] run return run setblock ~ ~ ~ nether_brick_slab[type=$(half)]
execute if block ~ ~ ~ nether_brick_stairs run return run setblock ~ ~ ~ nether_brick_wall
execute if block ~ ~ ~ blackstone_stairs run particle minecraft:block{block_state:"blackstone_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ blackstone_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:blackstone_slab",count:1}}
$execute if block ~ ~ ~ blackstone_stairs[half=$(half)] run return run setblock ~ ~ ~ blackstone_slab[type=$(half)]
execute if block ~ ~ ~ blackstone_stairs run return run setblock ~ ~ ~ blackstone_wall
execute if block ~ ~ ~ polished_blackstone_stairs run particle minecraft:block{block_state:"polished_blackstone_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ polished_blackstone_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:blackstone_slab",count:1}}
$execute if block ~ ~ ~ polished_blackstone_stairs[half=$(half)] run return run setblock ~ ~ ~ polished_blackstone_slab[type=$(half)]
execute if block ~ ~ ~ polished_blackstone_stairs run return run setblock ~ ~ ~ polished_blackstone_wall
execute if block ~ ~ ~ polished_blackstone_brick_stairs run particle minecraft:block{block_state:"polished_blackstone_brick_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ polished_blackstone_brick_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:blackstone_slab",count:1}}
$execute if block ~ ~ ~ polished_blackstone_brick_stairs[half=$(half)] run return run setblock ~ ~ ~ polished_blackstone_brick_slab[type=$(half)]
execute if block ~ ~ ~ polished_blackstone_brick_stairs run return run setblock ~ ~ ~ polished_blackstone_brick_wall
execute if block ~ ~ ~ end_stone_brick_stairs run particle minecraft:block{block_state:"end_stone_brick_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ end_stone_brick_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:end_stone_brick_slab",count:1}}
$execute if block ~ ~ ~ end_stone_brick_stairs[half=$(half)] run return run setblock ~ ~ ~ end_stone_brick_slab[type=$(half)]
execute if block ~ ~ ~ end_stone_brick_stairs run return run setblock ~ ~ ~ end_stone_brick_wall
execute if block ~ ~ ~ purpur_stairs run particle minecraft:block{block_state:"purpur_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ purpur_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:purpur_slab",count:1}}
execute if block ~ ~ ~ purpur_stairs[half=top] run return run setblock ~ ~ ~ purpur_slab[type=top]
execute if block ~ ~ ~ purpur_stairs[half=bottom] run return run setblock ~ ~ ~ purpur_slab[type=bottom]
execute if block ~ ~ ~ quartz_stairs run particle minecraft:block{block_state:"quartz_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ quartz_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:quartz_slab",count:1}}
execute if block ~ ~ ~ quartz_stairs[half=top] run return run setblock ~ ~ ~ quartz_slab[type=top]
execute if block ~ ~ ~ quartz_stairs[half=bottom] run return run setblock ~ ~ ~ quartz_slab[type=bottom]
execute if block ~ ~ ~ smooth_quartz_stairs run particle minecraft:block{block_state:"smooth_quartz_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ smooth_quartz_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:quartz_slab",count:1}}
execute if block ~ ~ ~ smooth_quartz_stairs[half=top] run return run setblock ~ ~ ~ smooth_quartz_slab[type=top]
execute if block ~ ~ ~ smooth_quartz_stairs[half=bottom] run return run setblock ~ ~ ~ smooth_quartz_slab[type=bottom]
execute if block ~ ~ ~ cut_copper_stairs run particle minecraft:block{block_state:"cut_copper_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ cut_copper_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:cut_copper_slab",count:1}}
execute if block ~ ~ ~ cut_copper_stairs[half=top] run return run setblock ~ ~ ~ cut_copper_slab[type=top]
execute if block ~ ~ ~ cut_copper_stairs[half=bottom] run return run setblock ~ ~ ~ cut_copper_slab[type=bottom]
execute if block ~ ~ ~ exposed_cut_copper_stairs run particle minecraft:block{block_state:"exposed_cut_copper_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ exposed_cut_copper_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:exposed_cut_copper_slab",count:1}}
execute if block ~ ~ ~ exposed_cut_copper_stairs[half=top] run return run setblock ~ ~ ~ exposed_cut_copper_slab[type=top]
execute if block ~ ~ ~ exposed_cut_copper_stairs[half=bottom] run return run setblock ~ ~ ~ exposed_cut_copper_slab[type=bottom]
execute if block ~ ~ ~ weathered_cut_copper_stairs run particle minecraft:block{block_state:"weathered_cut_copper_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ weathered_cut_copper_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:weathered_cut_copper_slab",count:1}}
execute if block ~ ~ ~ weathered_cut_copper_stairs[half=top] run return run setblock ~ ~ ~ weathered_cut_copper_slab[type=top]
execute if block ~ ~ ~ weathered_cut_copper_stairs[half=bottom] run return run setblock ~ ~ ~ weathered_cut_copper_slab[type=bottom]
execute if block ~ ~ ~ oxidized_cut_copper_stairs run particle minecraft:block{block_state:"oxidized_cut_copper_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ oxidized_cut_copper_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:oxidized_cut_copper_slab",count:1}}
execute if block ~ ~ ~ oxidized_cut_copper_stairs[half=top] run return run setblock ~ ~ ~ oxidized_cut_copper_slab[type=top]
execute if block ~ ~ ~ oxidized_cut_copper_stairs[half=bottom] run return run setblock ~ ~ ~ oxidized_cut_copper_slab[type=bottom]
execute if block ~ ~ ~ waxed_cut_copper_stairs run particle minecraft:block{block_state:"waxed_cut_copper_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ waxed_cut_copper_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:waxed_cut_copper_slab",count:1}}
execute if block ~ ~ ~ waxed_cut_copper_stairs[half=top] run return run setblock ~ ~ ~ waxed_cut_copper_slab[type=top]
execute if block ~ ~ ~ waxed_cut_copper_stairs[half=bottom] run return run setblock ~ ~ ~ waxed_cut_copper_slab[type=bottom]
execute if block ~ ~ ~ waxed_exposed_cut_copper_stairs run particle minecraft:block{block_state:"waxed_exposed_cut_copper_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ waxed_exposed_cut_copper_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:waxed_exposed_cut_copper_slab",count:1}}
execute if block ~ ~ ~ waxed_exposed_cut_copper_stairs[half=top] run return run setblock ~ ~ ~ waxed_exposed_cut_copper_slab[type=top]
execute if block ~ ~ ~ waxed_exposed_cut_copper_stairs[half=bottom] run return run setblock ~ ~ ~ waxed_exposed_cut_copper_slab[type=bottom]
execute if block ~ ~ ~ waxed_weathered_cut_copper_stairs run particle minecraft:block{block_state:"waxed_weathered_cut_copper_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ waxed_weathered_cut_copper_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:waxed_weathered_cut_copper_slab",count:1}}
execute if block ~ ~ ~ waxed_weathered_cut_copper_stairs[half=top] run return run setblock ~ ~ ~ waxed_weathered_cut_copper_slab[type=top]
execute if block ~ ~ ~ waxed_weathered_cut_copper_stairs[half=bottom] run return run setblock ~ ~ ~ waxed_weathered_cut_copper_slab[type=bottom]
execute if block ~ ~ ~ waxed_oxidized_cut_copper_stairs run particle minecraft:block{block_state:"waxed_oxidized_cut_copper_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ waxed_oxidized_cut_copper_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:waxed_oxidized_cut_copper_slab",count:1}}
execute if block ~ ~ ~ waxed_oxidized_cut_copper_stairs[half=top] run return run setblock ~ ~ ~ waxed_oxidized_cut_copper_slab[type=top]
execute if block ~ ~ ~ waxed_oxidized_cut_copper_stairs[half=bottom] run return run setblock ~ ~ ~ waxed_oxidized_cut_copper_slab[type=bottom]
execute if block ~ ~ ~ bamboo_stairs run particle minecraft:block{block_state:"bamboo_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ bamboo_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:bamboo_slab",count:1}}
$execute if block ~ ~ ~ bamboo_stairs[half=$(half)] run return run setblock ~ ~ ~ bamboo_slab[type=$(half)]
execute if block ~ ~ ~ bamboo_stairs run return run setblock ~ ~ ~ bamboo_fence
execute if block ~ ~ ~ bamboo_mosaic_stairs run particle minecraft:block{block_state:"bamboo_mosaic_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ bamboo_mosaic_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:bamboo_slab",count:1}}
execute if block ~ ~ ~ bamboo_mosaic_stairs[half=top] run return run setblock ~ ~ ~ bamboo_mosaic_slab[type=top]
execute if block ~ ~ ~ bamboo_mosaic_stairs[half=bottom] run return run setblock ~ ~ ~ bamboo_mosaic_slab[type=bottom]
execute if block ~ ~ ~ dark_prismarine_stairs run particle minecraft:block{block_state:"dark_prismarine_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ dark_prismarine_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:dark_prismarine_slab",count:1}}
execute if block ~ ~ ~ dark_prismarine_stairs[half=top] run return run setblock ~ ~ ~ dark_prismarine_slab[type=top]
execute if block ~ ~ ~ dark_prismarine_stairs[half=bottom] run return run setblock ~ ~ ~ dark_prismarine_slab[type=bottom]
execute if block ~ ~ ~ red_nether_brick_stairs run particle minecraft:block{block_state:"red_nether_brick_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ red_nether_brick_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:red_nether_brick_slab",count:1}}
$execute if block ~ ~ ~ red_nether_brick_stairs[half=$(half)] run return run setblock ~ ~ ~ red_nether_brick_slab[type=$(half)]
execute if block ~ ~ ~ red_nether_brick_stairs run return run setblock ~ ~ ~ red_nether_brick_wall
execute if block ~ ~ ~ brick_stairs run particle minecraft:block{block_state:"brick_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ brick_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:brick_slab",count:1}}
$execute if block ~ ~ ~ brick_stairs[half=$(half)] run return run setblock ~ ~ ~ brick_slab[type=$(half)]
execute if block ~ ~ ~ brick_stairs run return run setblock ~ ~ ~ brick_wall
execute if block ~ ~ ~ oak_stairs run particle minecraft:block{block_state:"oak_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ oak_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:oak_slab",count:1}}
$execute if block ~ ~ ~ oak_stairs[half=$(half)] run return run setblock ~ ~ ~ oak_slab[type=$(half)]
execute if block ~ ~ ~ oak_stairs run return run setblock ~ ~ ~ oak_fence
execute if block ~ ~ ~ spruce_stairs run particle minecraft:block{block_state:"spruce_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ spruce_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:spruce_slab",count:1}}
$execute if block ~ ~ ~ spruce_stairs[half=$(half)] run return run setblock ~ ~ ~ spruce_slab[type=$(half)]
execute if block ~ ~ ~ spruce_stairs run return run setblock ~ ~ ~ spruce_fence
execute if block ~ ~ ~ birch_stairs run particle minecraft:block{block_state:"birch_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ birch_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:birch_slab",count:1}}
$execute if block ~ ~ ~ birch_stairs[half=$(half)] run return run setblock ~ ~ ~ birch_slab[type=$(half)]
execute if block ~ ~ ~ birch_stairs run return run setblock ~ ~ ~ birch_fence
execute if block ~ ~ ~ jungle_stairs run particle minecraft:block{block_state:"jungle_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ jungle_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:jungle_slab",count:1}}
$execute if block ~ ~ ~ jungle_stairs[half=$(half)] run return run setblock ~ ~ ~ jungle_slab[type=$(half)]
execute if block ~ ~ ~ jungle_stairs run return run setblock ~ ~ ~ jungle_fence
execute if block ~ ~ ~ acacia_stairs run particle minecraft:block{block_state:"acacia_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ acacia_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:acacia_slab",count:1}}
$execute if block ~ ~ ~ acacia_stairs[half=$(half)] run return run setblock ~ ~ ~ acacia_slab[type=$(half)]
execute if block ~ ~ ~ acacia_stairs run return run setblock ~ ~ ~ acacia_fence
execute if block ~ ~ ~ dark_oak_stairs run particle minecraft:block{block_state:"dark_oak_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ dark_oak_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:dark_oak_slab",count:1}}
$execute if block ~ ~ ~ dark_oak_stairs[half=$(half)] run return run setblock ~ ~ ~ dark_oak_slab[type=$(half)]
execute if block ~ ~ ~ dark_oak_stairs run return run setblock ~ ~ ~ dark_oak_fence
execute if block ~ ~ ~ mangrove_stairs run particle minecraft:block{block_state:"mangrove_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ mangrove_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:mangrove_slab",count:1}}
$execute if block ~ ~ ~ mangrove_stairs[half=$(half)] run return run setblock ~ ~ ~ mangrove_slab[type=$(half)]
execute if block ~ ~ ~ mangrove_stairs run return run setblock ~ ~ ~ mangrove_fence
execute if block ~ ~ ~ cherry_stairs run particle minecraft:block{block_state:"cherry_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ cherry_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:cherry_slab",count:1}}
$execute if block ~ ~ ~ cherry_stairs[half=$(half)] run return run setblock ~ ~ ~ cherry_slab[type=$(half)]
execute if block ~ ~ ~ cherry_stairs run return run setblock ~ ~ ~ cherry_fence
execute if block ~ ~ ~ crimson_stairs run particle minecraft:block{block_state:"crimson_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ crimson_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:crimson_slab",count:1}}
$execute if block ~ ~ ~ crimson_stairs[half=$(half)] run return run setblock ~ ~ ~ crimson_slab[type=$(half)]
execute if block ~ ~ ~ crimson_stairs run return run setblock ~ ~ ~ crimson_fence
execute if block ~ ~ ~ warped_stairs run particle minecraft:block{block_state:"warped_stairs"} ~.5 ~.5 ~.5 .35 .35 .35 1 40
execute if block ~ ~ ~ warped_stairs at @s positioned ^ ^.5 ^1 run summon item ~ ~ ~ {Item:{id:"minecraft:warped_slab",count:1}}
$execute if block ~ ~ ~ warped_stairs[half=$(half)] run return run setblock ~ ~ ~ warped_slab[type=$(half)]
execute if block ~ ~ ~ warped_stairs run return run setblock ~ ~ ~ warped_fence
