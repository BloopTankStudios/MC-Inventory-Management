# Auto Generated

playsound minecraft:item.flintandsteel.use block @a ~.5 ~.5 ~.5 .5
playsound minecraft:block.fire.extinguish block @a ~.5 ~.5 ~.5 .1
particle minecraft:smoke ~.5 ~.5 ~.5 .35 .35 .35 .01 40

execute if block ~ ~ ~ mud run return run setblock ~ ~ ~ dirt
execute if block ~ ~ ~ dirt run return run setblock ~ ~ ~ coarse_dirt
execute if block ~ ~ ~ cobblestone run return run setblock ~ ~ ~ stone
execute if block ~ ~ ~ stone run return run setblock ~ ~ ~ smooth_stone
execute if block ~ ~ ~ stone_bricks run return run setblock ~ ~ ~ cracked_stone_bricks
execute if block ~ ~ ~ cobbled_deepslate run return run setblock ~ ~ ~ deepslate
execute if block ~ ~ ~ deepslate_bricks run return run setblock ~ ~ ~ cracked_deepslate_bricks
execute if block ~ ~ ~ deepslate_tiles run return run setblock ~ ~ ~ cracked_deepslate_tiles
execute if block ~ ~ ~ sandstone run return run setblock ~ ~ ~ smooth_sandstone
execute if block ~ ~ ~ red_sandstone run return run setblock ~ ~ ~ smooth_red_sandstone
execute if block ~ ~ ~ nether_bricks run return run setblock ~ ~ ~ cracked_nether_bricks
execute if block ~ ~ ~ basalt run return run setblock ~ ~ ~ smooth_basalt
execute if block ~ ~ ~ polished_blackstone_bricks run return run setblock ~ ~ ~ cracked_polished_blackstone_bricks
execute if block ~ ~ ~ quartz_block run return run setblock ~ ~ ~ smooth_quartz
execute if block ~ ~ ~ grass_block run return run setblock ~ ~ ~ dirt
execute if block ~ ~ ~ podzol run return run setblock ~ ~ ~ dirt
execute if block ~ ~ ~ mycelium run return run setblock ~ ~ ~ dirt
execute if block ~ ~ ~ carved_pumpkin[facing=north] run return run setblock ~ ~ ~ jack_o_lantern[facing=north]
execute if block ~ ~ ~ carved_pumpkin[facing=east] run return run setblock ~ ~ ~ jack_o_lantern[facing=east]
execute if block ~ ~ ~ carved_pumpkin[facing=south] run return run setblock ~ ~ ~ jack_o_lantern[facing=south]
execute if block ~ ~ ~ carved_pumpkin[facing=west] run return run setblock ~ ~ ~ jack_o_lantern[facing=west]
execute if block ~ ~ ~ wet_sponge run return run setblock ~ ~ ~ sponge
