# Auto Generated

execute if block ~ ~ ~ mud_brick_stairs run playsound block.stone.place
execute if block ~ ~ ~ mud_brick_stairs run return run setblock ~ ~ ~ mud_bricks
execute if block ~ ~ ~ mud_brick_slab run return run function brush:inventory/remove_slab {slab:"mud_brick_slab", item:"dirt", block:"mud_bricks"}
execute if block ~ ~ ~ mud_brick_wall run return run function brush:inventory/remove_slab {slab:"mud_brick_slab", item:"dirt", block:"mud_bricks"}

execute if block ~ ~ ~ cobblestone_stairs run playsound block.stone.place
execute if block ~ ~ ~ cobblestone_stairs run return run setblock ~ ~ ~ cobblestone
execute if block ~ ~ ~ cobblestone_slab run return run function brush:inventory/remove_slab {slab:"cobblestone_slab", item:"cobblestone", block:"cobblestone"}
execute if block ~ ~ ~ cobblestone_wall run return run function brush:inventory/remove_slab {slab:"cobblestone_slab", item:"cobblestone", block:"cobblestone"}

execute if block ~ ~ ~ mossy_cobblestone_stairs run playsound block.stone.place
execute if block ~ ~ ~ mossy_cobblestone_stairs run return run setblock ~ ~ ~ mossy_cobblestone
execute if block ~ ~ ~ mossy_cobblestone_slab run return run function brush:inventory/remove_slab {slab:"cobblestone_slab", item:"cobblestone", block:"mossy_cobblestone"}
execute if block ~ ~ ~ mossy_cobblestone_wall run return run function brush:inventory/remove_slab {slab:"cobblestone_slab", item:"cobblestone", block:"mossy_cobblestone"}

execute if block ~ ~ ~ stone_stairs run playsound block.stone.place
execute if block ~ ~ ~ stone_stairs run return run setblock ~ ~ ~ stone
execute if block ~ ~ ~ stone_slab run return run function brush:inventory/remove_slab {slab:"cobblestone_slab", item:"cobblestone", block:"stone"}

execute if block ~ ~ ~ stone_brick_stairs run playsound block.stone.place
execute if block ~ ~ ~ stone_brick_stairs run return run setblock ~ ~ ~ stone_bricks
execute if block ~ ~ ~ stone_brick_slab run return run function brush:inventory/remove_slab {slab:"cobblestone_slab", item:"cobblestone", block:"stone_bricks"}
execute if block ~ ~ ~ stone_brick_wall run return run function brush:inventory/remove_slab {slab:"cobblestone_slab", item:"cobblestone", block:"stone_bricks"}

execute if block ~ ~ ~ mossy_stone_brick_stairs run playsound block.stone.place
execute if block ~ ~ ~ mossy_stone_brick_stairs run return run setblock ~ ~ ~ mossy_stone_bricks
execute if block ~ ~ ~ mossy_stone_brick_slab run return run function brush:inventory/remove_slab {slab:"cobblestone_slab", item:"cobblestone", block:"mossy_stone_bricks"}
execute if block ~ ~ ~ mossy_stone_brick_wall run return run function brush:inventory/remove_slab {slab:"cobblestone_slab", item:"cobblestone", block:"mossy_stone_bricks"}

execute if block ~ ~ ~ smooth_stone_slab run return run function brush:inventory/remove_slab {slab:"cobblestone_slab", item:"cobblestone", block:"smooth_stone"}

execute if block ~ ~ ~ granite_stairs run playsound block.stone.place
execute if block ~ ~ ~ granite_stairs run return run setblock ~ ~ ~ granite
execute if block ~ ~ ~ granite_slab run return run function brush:inventory/remove_slab {slab:"cobblestone_slab", item:"cobblestone", block:"granite"}
execute if block ~ ~ ~ granite_wall run return run function brush:inventory/remove_slab {slab:"cobblestone_slab", item:"cobblestone", block:"granite"}

execute if block ~ ~ ~ polished_granite_stairs run playsound block.stone.place
execute if block ~ ~ ~ polished_granite_stairs run return run setblock ~ ~ ~ polished_granite
execute if block ~ ~ ~ polished_granite_slab run return run function brush:inventory/remove_slab {slab:"cobblestone_slab", item:"cobblestone", block:"polished_granite"}

execute if block ~ ~ ~ diorite_stairs run playsound block.stone.place
execute if block ~ ~ ~ diorite_stairs run return run setblock ~ ~ ~ diorite
execute if block ~ ~ ~ diorite_slab run return run function brush:inventory/remove_slab {slab:"cobblestone_slab", item:"cobblestone", block:"diorite"}
execute if block ~ ~ ~ diorite_wall run return run function brush:inventory/remove_slab {slab:"cobblestone_slab", item:"cobblestone", block:"diorite"}

execute if block ~ ~ ~ polished_diorite_stairs run playsound block.stone.place
execute if block ~ ~ ~ polished_diorite_stairs run return run setblock ~ ~ ~ polished_diorite
execute if block ~ ~ ~ polished_diorite_slab run return run function brush:inventory/remove_slab {slab:"cobblestone_slab", item:"cobblestone", block:"polished_diorite"}

execute if block ~ ~ ~ andesite_stairs run playsound block.stone.place
execute if block ~ ~ ~ andesite_stairs run return run setblock ~ ~ ~ andesite
execute if block ~ ~ ~ andesite_slab run return run function brush:inventory/remove_slab {slab:"cobblestone_slab", item:"cobblestone", block:"andesite"}
execute if block ~ ~ ~ andesite_wall run return run function brush:inventory/remove_slab {slab:"cobblestone_slab", item:"cobblestone", block:"andesite"}

execute if block ~ ~ ~ polished_andesite_stairs run playsound block.stone.place
execute if block ~ ~ ~ polished_andesite_stairs run return run setblock ~ ~ ~ polished_andesite
execute if block ~ ~ ~ polished_andesite_slab run return run function brush:inventory/remove_slab {slab:"cobblestone_slab", item:"cobblestone", block:"polished_andesite"}

execute if block ~ ~ ~ cobbled_deepslate_stairs run playsound block.stone.place
execute if block ~ ~ ~ cobbled_deepslate_stairs run return run setblock ~ ~ ~ cobbled_deepslate
execute if block ~ ~ ~ cobbled_deepslate_slab run return run function brush:inventory/remove_slab {slab:"cobbled_deepslate_slab", item:"cobbled_deepslate", block:"cobbled_deepslate"}
execute if block ~ ~ ~ cobbled_deepslate_wall run return run function brush:inventory/remove_slab {slab:"cobbled_deepslate_slab", item:"cobbled_deepslate", block:"cobbled_deepslate"}

execute if block ~ ~ ~ polished_deepslate_stairs run playsound block.stone.place
execute if block ~ ~ ~ polished_deepslate_stairs run return run setblock ~ ~ ~ polished_deepslate
execute if block ~ ~ ~ polished_deepslate_slab run return run function brush:inventory/remove_slab {slab:"cobbled_deepslate_slab", item:"cobbled_deepslate", block:"polished_deepslate"}
execute if block ~ ~ ~ polished_deepslate_wall run return run function brush:inventory/remove_slab {slab:"cobbled_deepslate_slab", item:"cobbled_deepslate", block:"polished_deepslate"}

execute if block ~ ~ ~ deepslate_brick_stairs run playsound block.stone.place
execute if block ~ ~ ~ deepslate_brick_stairs run return run setblock ~ ~ ~ deepslate_bricks
execute if block ~ ~ ~ deepslate_brick_slab run return run function brush:inventory/remove_slab {slab:"cobbled_deepslate_slab", item:"cobbled_deepslate", block:"deepslate_bricks"}
execute if block ~ ~ ~ deepslate_brick_wall run return run function brush:inventory/remove_slab {slab:"cobbled_deepslate_slab", item:"cobbled_deepslate", block:"deepslate_bricks"}

execute if block ~ ~ ~ deepslate_tile_stairs run playsound block.stone.place
execute if block ~ ~ ~ deepslate_tile_stairs run return run setblock ~ ~ ~ deepslate_tiles
execute if block ~ ~ ~ deepslate_tile_slab run return run function brush:inventory/remove_slab {slab:"cobbled_deepslate_slab", item:"cobbled_deepslate", block:"deepslate_tiles"}
execute if block ~ ~ ~ deepslate_tile_wall run return run function brush:inventory/remove_slab {slab:"cobbled_deepslate_slab", item:"cobbled_deepslate", block:"deepslate_tiles"}

execute if block ~ ~ ~ tuff_stairs run playsound block.stone.place
execute if block ~ ~ ~ tuff_stairs run return run setblock ~ ~ ~ tuff
execute if block ~ ~ ~ tuff_slab run return run function brush:inventory/remove_slab {slab:"tuff_slab", item:"tuff", block:"tuff"}
execute if block ~ ~ ~ tuff_wall run return run function brush:inventory/remove_slab {slab:"tuff_slab", item:"tuff", block:"tuff"}

execute if block ~ ~ ~ polished_tuff_stairs run playsound block.stone.place
execute if block ~ ~ ~ polished_tuff_stairs run return run setblock ~ ~ ~ polished_tuff
execute if block ~ ~ ~ polished_tuff_slab run return run function brush:inventory/remove_slab {slab:"tuff_slab", item:"tuff", block:"polished_tuff"}
execute if block ~ ~ ~ polished_tuff_wall run return run function brush:inventory/remove_slab {slab:"tuff_slab", item:"tuff", block:"polished_tuff"}

execute if block ~ ~ ~ tuff_brick_stairs run playsound block.stone.place
execute if block ~ ~ ~ tuff_brick_stairs run return run setblock ~ ~ ~ tuff_bricks
execute if block ~ ~ ~ tuff_brick_slab run return run function brush:inventory/remove_slab {slab:"tuff_slab", item:"tuff", block:"tuff_bricks"}
execute if block ~ ~ ~ tuff_brick_wall run return run function brush:inventory/remove_slab {slab:"tuff_slab", item:"tuff", block:"tuff_bricks"}

execute if block ~ ~ ~ sandstone_stairs run playsound block.stone.place
execute if block ~ ~ ~ sandstone_stairs run return run setblock ~ ~ ~ sandstone
execute if block ~ ~ ~ sandstone_slab run return run function brush:inventory/remove_slab {slab:"sandstone_slab", item:"sandstone", block:"sandstone"}
execute if block ~ ~ ~ sandstone_wall run return run function brush:inventory/remove_slab {slab:"sandstone_slab", item:"sandstone", block:"sandstone"}

execute if block ~ ~ ~ smooth_sandstone_stairs run playsound block.stone.place
execute if block ~ ~ ~ smooth_sandstone_stairs run return run setblock ~ ~ ~ smooth_sandstone
execute if block ~ ~ ~ smooth_sandstone_slab run return run function brush:inventory/remove_slab {slab:"sandstone_slab", item:"sandstone", block:"smooth_sandstone"}

execute if block ~ ~ ~ cut_sandstone_slab run return run function brush:inventory/remove_slab {slab:"sandstone_slab", item:"sandstone", block:"cut_sandstone"}

execute if block ~ ~ ~ red_sandstone_stairs run playsound block.stone.place
execute if block ~ ~ ~ red_sandstone_stairs run return run setblock ~ ~ ~ red_sandstone
execute if block ~ ~ ~ red_sandstone_slab run return run function brush:inventory/remove_slab {slab:"red_sandstone_slab", item:"red_sandstone", block:"red_sandstone"}
execute if block ~ ~ ~ red_sandstone_wall run return run function brush:inventory/remove_slab {slab:"red_sandstone_slab", item:"red_sandstone", block:"red_sandstone"}

execute if block ~ ~ ~ smooth_red_sandstone_stairs run playsound block.stone.place
execute if block ~ ~ ~ smooth_red_sandstone_stairs run return run setblock ~ ~ ~ smooth_red_sandstone
execute if block ~ ~ ~ smooth_red_sandstone_slab run return run function brush:inventory/remove_slab {slab:"red_sandstone_slab", item:"red_sandstone", block:"smooth_red_sandstone"}

execute if block ~ ~ ~ cut_red_sandstone_slab run return run function brush:inventory/remove_slab {slab:"red_sandstone_slab", item:"red_sandstone", block:"cut_red_sandstone"}

execute if block ~ ~ ~ prismarine_stairs run playsound block.stone.place
execute if block ~ ~ ~ prismarine_stairs run return run setblock ~ ~ ~ prismarine
execute if block ~ ~ ~ prismarine_slab run return run function brush:inventory/remove_slab {slab:"prismarine_slab", item:"prismarine", block:"prismarine"}
execute if block ~ ~ ~ prismarine_wall run return run function brush:inventory/remove_slab {slab:"prismarine_slab", item:"prismarine", block:"prismarine"}

execute if block ~ ~ ~ prismarine_brick_stairs run playsound block.stone.place
execute if block ~ ~ ~ prismarine_brick_stairs run return run setblock ~ ~ ~ prismarine_bricks
execute if block ~ ~ ~ prismarine_brick_slab run return run function brush:inventory/remove_slab {slab:"prismarine_slab", item:"prismarine", block:"prismarine_bricks"}

execute if block ~ ~ ~ nether_brick_stairs run playsound block.stone.place
execute if block ~ ~ ~ nether_brick_stairs run return run setblock ~ ~ ~ nether_bricks
execute if block ~ ~ ~ nether_brick_slab run return run function brush:inventory/remove_slab {slab:"nether_brick_slab", item:"nether_bricks", block:"nether_bricks"}
execute if block ~ ~ ~ nether_brick_wall run return run function brush:inventory/remove_slab {slab:"nether_brick_slab", item:"nether_bricks", block:"nether_bricks"}
execute if block ~ ~ ~ nether_brick_fence run return run function brush:inventory/remove_slab {slab:"nether_brick_slab", item:"nether_bricks", block:"nether_bricks"}

execute if block ~ ~ ~ blackstone_stairs run playsound block.stone.place
execute if block ~ ~ ~ blackstone_stairs run return run setblock ~ ~ ~ blackstone
execute if block ~ ~ ~ blackstone_slab run return run function brush:inventory/remove_slab {slab:"blackstone_slab", item:"blackstone", block:"blackstone"}
execute if block ~ ~ ~ blackstone_wall run return run function brush:inventory/remove_slab {slab:"blackstone_slab", item:"blackstone", block:"blackstone"}

execute if block ~ ~ ~ polished_blackstone_stairs run playsound block.stone.place
execute if block ~ ~ ~ polished_blackstone_stairs run return run setblock ~ ~ ~ polished_blackstone
execute if block ~ ~ ~ polished_blackstone_slab run return run function brush:inventory/remove_slab {slab:"blackstone_slab", item:"blackstone", block:"polished_blackstone"}
execute if block ~ ~ ~ polished_blackstone_wall run return run function brush:inventory/remove_slab {slab:"blackstone_slab", item:"blackstone", block:"polished_blackstone"}

execute if block ~ ~ ~ polished_blackstone_brick_stairs run playsound block.stone.place
execute if block ~ ~ ~ polished_blackstone_brick_stairs run return run setblock ~ ~ ~ polished_blackstone_bricks
execute if block ~ ~ ~ polished_blackstone_brick_slab run return run function brush:inventory/remove_slab {slab:"blackstone_slab", item:"blackstone", block:"polished_blackstone_bricks"}
execute if block ~ ~ ~ polished_blackstone_brick_wall run return run function brush:inventory/remove_slab {slab:"blackstone_slab", item:"blackstone", block:"polished_blackstone_bricks"}

execute if block ~ ~ ~ end_stone_brick_stairs run playsound block.stone.place
execute if block ~ ~ ~ end_stone_brick_stairs run return run setblock ~ ~ ~ end_stone_bricks
execute if block ~ ~ ~ end_stone_brick_slab run return run function brush:inventory/remove_slab {slab:"end_stone_brick_slab", item:"end_stone", block:"end_stone_bricks"}
execute if block ~ ~ ~ end_stone_brick_wall run return run function brush:inventory/remove_slab {slab:"end_stone_brick_slab", item:"end_stone", block:"end_stone_bricks"}

execute if block ~ ~ ~ purpur_stairs run playsound block.stone.place
execute if block ~ ~ ~ purpur_stairs run return run setblock ~ ~ ~ purpur_block
execute if block ~ ~ ~ purpur_slab run return run function brush:inventory/remove_slab {slab:"purpur_slab", item:"purpur_block", block:"purpur_block"}

execute if block ~ ~ ~ quartz_stairs run playsound block.stone.place
execute if block ~ ~ ~ quartz_stairs run return run setblock ~ ~ ~ quartz_block
execute if block ~ ~ ~ quartz_slab run return run function brush:inventory/remove_slab {slab:"quartz_slab", item:"quartz_block", block:"quartz_block"}

execute if block ~ ~ ~ smooth_quartz_stairs run playsound block.stone.place
execute if block ~ ~ ~ smooth_quartz_stairs run return run setblock ~ ~ ~ smooth_quartz
execute if block ~ ~ ~ smooth_quartz_slab run return run function brush:inventory/remove_slab {slab:"quartz_slab", item:"quartz_block", block:"smooth_quartz"}

execute if block ~ ~ ~ cut_copper_stairs run playsound block.stone.place
execute if block ~ ~ ~ cut_copper_stairs run return run setblock ~ ~ ~ cut_copper
execute if block ~ ~ ~ cut_copper_slab run return run function brush:inventory/remove_slab {slab:"cut_copper_slab", item:"copper_block", block:"cut_copper"}

execute if block ~ ~ ~ exposed_cut_copper_stairs run playsound block.stone.place
execute if block ~ ~ ~ exposed_cut_copper_stairs run return run setblock ~ ~ ~ exposed_cut_copper
execute if block ~ ~ ~ exposed_cut_copper_slab run return run function brush:inventory/remove_slab {slab:"exposed_cut_copper_slab", item:"exposed_copper", block:"exposed_cut_copper"}

execute if block ~ ~ ~ weathered_cut_copper_stairs run playsound block.stone.place
execute if block ~ ~ ~ weathered_cut_copper_stairs run return run setblock ~ ~ ~ weathered_cut_copper
execute if block ~ ~ ~ weathered_cut_copper_slab run return run function brush:inventory/remove_slab {slab:"weathered_cut_copper_slab", item:"weathered_copper", block:"weathered_cut_copper"}

execute if block ~ ~ ~ oxidized_cut_copper_stairs run playsound block.stone.place
execute if block ~ ~ ~ oxidized_cut_copper_stairs run return run setblock ~ ~ ~ oxidized_cut_copper
execute if block ~ ~ ~ oxidized_cut_copper_slab run return run function brush:inventory/remove_slab {slab:"oxidized_cut_copper_slab", item:"oxidized_copper", block:"oxidized_cut_copper"}

execute if block ~ ~ ~ waxed_cut_copper_stairs run playsound block.stone.place
execute if block ~ ~ ~ waxed_cut_copper_stairs run return run setblock ~ ~ ~ waxed_cut_copper
execute if block ~ ~ ~ waxed_cut_copper_slab run return run function brush:inventory/remove_slab {slab:"waxed_cut_copper_slab", item:"waxed_copper_block", block:"waxed_cut_copper"}

execute if block ~ ~ ~ waxed_exposed_cut_copper_stairs run playsound block.stone.place
execute if block ~ ~ ~ waxed_exposed_cut_copper_stairs run return run setblock ~ ~ ~ waxed_exposed_cut_copper
execute if block ~ ~ ~ waxed_exposed_cut_copper_slab run return run function brush:inventory/remove_slab {slab:"waxed_exposed_cut_copper_slab", item:"waxed_exposed_copper", block:"waxed_exposed_cut_copper"}

execute if block ~ ~ ~ waxed_weathered_cut_copper_stairs run playsound block.stone.place
execute if block ~ ~ ~ waxed_weathered_cut_copper_stairs run return run setblock ~ ~ ~ waxed_weathered_cut_copper
execute if block ~ ~ ~ waxed_weathered_cut_copper_slab run return run function brush:inventory/remove_slab {slab:"waxed_weathered_cut_copper_slab", item:"waxed_weathered_copper", block:"waxed_weathered_cut_copper"}

execute if block ~ ~ ~ waxed_oxidized_cut_copper_stairs run playsound block.stone.place
execute if block ~ ~ ~ waxed_oxidized_cut_copper_stairs run return run setblock ~ ~ ~ waxed_oxidized_cut_copper
execute if block ~ ~ ~ waxed_oxidized_cut_copper_slab run return run function brush:inventory/remove_slab {slab:"waxed_oxidized_cut_copper_slab", item:"waxed_oxidized_copper", block:"waxed_oxidized_cut_copper"}

execute if block ~ ~ ~ bamboo_stairs run playsound block.stone.place
execute if block ~ ~ ~ bamboo_stairs run return run setblock ~ ~ ~ bamboo_planks
execute if block ~ ~ ~ bamboo_slab run return run function brush:inventory/remove_slab {slab:"bamboo_slab", item:"bamboo_planks", block:"bamboo_planks"}
execute if block ~ ~ ~ bamboo_fence run return run function brush:inventory/remove_slab {slab:"bamboo_slab", item:"bamboo_planks", block:"bamboo_planks"}

execute if block ~ ~ ~ bamboo_mosaic_stairs run playsound block.stone.place
execute if block ~ ~ ~ bamboo_mosaic_stairs run return run setblock ~ ~ ~ bamboo_mosaic
execute if block ~ ~ ~ bamboo_mosaic_slab run return run function brush:inventory/remove_slab {slab:"bamboo_slab", item:"bamboo_planks", block:"bamboo_mosaic"}

execute if block ~ ~ ~ dark_prismarine_stairs run playsound block.stone.place
execute if block ~ ~ ~ dark_prismarine_stairs run return run setblock ~ ~ ~ dark_prismarine
execute if block ~ ~ ~ dark_prismarine_slab run return run function brush:inventory/remove_slab {slab:"dark_prismarine_slab", item:"dark_prismarine", block:"dark_prismarine"}

execute if block ~ ~ ~ red_nether_brick_stairs run playsound block.stone.place
execute if block ~ ~ ~ red_nether_brick_stairs run return run setblock ~ ~ ~ red_nether_bricks
execute if block ~ ~ ~ red_nether_brick_slab run return run function brush:inventory/remove_slab {slab:"red_nether_brick_slab", item:"red_nether_bricks", block:"red_nether_bricks"}
execute if block ~ ~ ~ red_nether_brick_wall run return run function brush:inventory/remove_slab {slab:"red_nether_brick_slab", item:"red_nether_bricks", block:"red_nether_bricks"}

execute if block ~ ~ ~ brick_stairs run playsound block.stone.place
execute if block ~ ~ ~ brick_stairs run return run setblock ~ ~ ~ bricks
execute if block ~ ~ ~ brick_slab run return run function brush:inventory/remove_slab {slab:"brick_slab", item:"bricks", block:"bricks"}
execute if block ~ ~ ~ brick_wall run return run function brush:inventory/remove_slab {slab:"brick_slab", item:"bricks", block:"bricks"}

execute if block ~ ~ ~ oak_stairs run playsound block.stone.place
execute if block ~ ~ ~ oak_stairs run return run setblock ~ ~ ~ oak_planks
execute if block ~ ~ ~ oak_slab run return run function brush:inventory/remove_slab {slab:"oak_slab", item:"oak_planks", block:"oak_planks"}
execute if block ~ ~ ~ oak_fence run return run function brush:inventory/remove_slab {slab:"oak_slab", item:"oak_planks", block:"oak_planks"}

execute if block ~ ~ ~ spruce_stairs run playsound block.stone.place
execute if block ~ ~ ~ spruce_stairs run return run setblock ~ ~ ~ spruce_planks
execute if block ~ ~ ~ spruce_slab run return run function brush:inventory/remove_slab {slab:"spruce_slab", item:"spruce_planks", block:"spruce_planks"}
execute if block ~ ~ ~ spruce_fence run return run function brush:inventory/remove_slab {slab:"spruce_slab", item:"spruce_planks", block:"spruce_planks"}

execute if block ~ ~ ~ birch_stairs run playsound block.stone.place
execute if block ~ ~ ~ birch_stairs run return run setblock ~ ~ ~ birch_planks
execute if block ~ ~ ~ birch_slab run return run function brush:inventory/remove_slab {slab:"birch_slab", item:"birch_planks", block:"birch_planks"}
execute if block ~ ~ ~ birch_fence run return run function brush:inventory/remove_slab {slab:"birch_slab", item:"birch_planks", block:"birch_planks"}

execute if block ~ ~ ~ jungle_stairs run playsound block.stone.place
execute if block ~ ~ ~ jungle_stairs run return run setblock ~ ~ ~ jungle_planks
execute if block ~ ~ ~ jungle_slab run return run function brush:inventory/remove_slab {slab:"jungle_slab", item:"jungle_planks", block:"jungle_planks"}
execute if block ~ ~ ~ jungle_fence run return run function brush:inventory/remove_slab {slab:"jungle_slab", item:"jungle_planks", block:"jungle_planks"}

execute if block ~ ~ ~ acacia_stairs run playsound block.stone.place
execute if block ~ ~ ~ acacia_stairs run return run setblock ~ ~ ~ acacia_planks
execute if block ~ ~ ~ acacia_slab run return run function brush:inventory/remove_slab {slab:"acacia_slab", item:"acacia_planks", block:"acacia_planks"}
execute if block ~ ~ ~ acacia_fence run return run function brush:inventory/remove_slab {slab:"acacia_slab", item:"acacia_planks", block:"acacia_planks"}

execute if block ~ ~ ~ dark_oak_stairs run playsound block.stone.place
execute if block ~ ~ ~ dark_oak_stairs run return run setblock ~ ~ ~ dark_oak_planks
execute if block ~ ~ ~ dark_oak_slab run return run function brush:inventory/remove_slab {slab:"dark_oak_slab", item:"dark_oak_planks", block:"dark_oak_planks"}
execute if block ~ ~ ~ dark_oak_fence run return run function brush:inventory/remove_slab {slab:"dark_oak_slab", item:"dark_oak_planks", block:"dark_oak_planks"}

execute if block ~ ~ ~ mangrove_stairs run playsound block.stone.place
execute if block ~ ~ ~ mangrove_stairs run return run setblock ~ ~ ~ mangrove_planks
execute if block ~ ~ ~ mangrove_slab run return run function brush:inventory/remove_slab {slab:"mangrove_slab", item:"mangrove_planks", block:"mangrove_planks"}
execute if block ~ ~ ~ mangrove_fence run return run function brush:inventory/remove_slab {slab:"mangrove_slab", item:"mangrove_planks", block:"mangrove_planks"}

execute if block ~ ~ ~ cherry_stairs run playsound block.stone.place
execute if block ~ ~ ~ cherry_stairs run return run setblock ~ ~ ~ cherry_planks
execute if block ~ ~ ~ cherry_slab run return run function brush:inventory/remove_slab {slab:"cherry_slab", item:"cherry_planks", block:"cherry_planks"}
execute if block ~ ~ ~ cherry_fence run return run function brush:inventory/remove_slab {slab:"cherry_slab", item:"cherry_planks", block:"cherry_planks"}

execute if block ~ ~ ~ crimson_stairs run playsound block.stone.place
execute if block ~ ~ ~ crimson_stairs run return run setblock ~ ~ ~ crimson_planks
execute if block ~ ~ ~ crimson_slab run return run function brush:inventory/remove_slab {slab:"crimson_slab", item:"crimson_planks", block:"crimson_planks"}
execute if block ~ ~ ~ crimson_fence run return run function brush:inventory/remove_slab {slab:"crimson_slab", item:"crimson_planks", block:"crimson_planks"}

execute if block ~ ~ ~ warped_stairs run playsound block.stone.place
execute if block ~ ~ ~ warped_stairs run return run setblock ~ ~ ~ warped_planks
execute if block ~ ~ ~ warped_slab run return run function brush:inventory/remove_slab {slab:"warped_slab", item:"warped_planks", block:"warped_planks"}
execute if block ~ ~ ~ warped_fence run return run function brush:inventory/remove_slab {slab:"warped_slab", item:"warped_planks", block:"warped_planks"}

