# Auto Generated

playsound minecraft:item.brush.brushing.sand.complete block @a ~.5 ~.5 ~.5 .5

execute if block ~ ~ ~ prismarine if items entity @s weapon.* black_dye run particle minecraft:dust{color:[0,0,0], scale:1} ~.5 ~.5 ~.5 .325 .325 .325 1 25
execute if block ~ ~ ~ prismarine if items entity @s weapon.* black_dye run return run setblock ~ ~ ~ dark_prismarine
execute if block ~ ~ ~ prismarine_stairs if items entity @s weapon.* black_dye run particle minecraft:dust{color:[0,0,0], scale:1} ~.5 ~.5 ~.5 .325 .325 .325 1 25
execute if block ~ ~ ~ prismarine_stairs[facing=north,half=top] if items entity @s weapon.* black_dye run return run setblock ~ ~ ~ dark_prismarine_stairs[facing=north,half=top]
execute if block ~ ~ ~ prismarine_stairs[facing=east,half=top] if items entity @s weapon.* black_dye run return run setblock ~ ~ ~ dark_prismarine_stairs[facing=east,half=top]
execute if block ~ ~ ~ prismarine_stairs[facing=south,half=top] if items entity @s weapon.* black_dye run return run setblock ~ ~ ~ dark_prismarine_stairs[facing=south,half=top]
execute if block ~ ~ ~ prismarine_stairs[facing=west,half=top] if items entity @s weapon.* black_dye run return run setblock ~ ~ ~ dark_prismarine_stairs[facing=west,half=top]
execute if block ~ ~ ~ prismarine_stairs[facing=north,half=bottom] if items entity @s weapon.* black_dye run return run setblock ~ ~ ~ dark_prismarine_stairs[facing=north,half=bottom]
execute if block ~ ~ ~ prismarine_stairs[facing=east,half=bottom] if items entity @s weapon.* black_dye run return run setblock ~ ~ ~ dark_prismarine_stairs[facing=east,half=bottom]
execute if block ~ ~ ~ prismarine_stairs[facing=south,half=bottom] if items entity @s weapon.* black_dye run return run setblock ~ ~ ~ dark_prismarine_stairs[facing=south,half=bottom]
execute if block ~ ~ ~ prismarine_stairs[facing=west,half=bottom] if items entity @s weapon.* black_dye run return run setblock ~ ~ ~ dark_prismarine_stairs[facing=west,half=bottom]
execute if block ~ ~ ~ prismarine_slab if items entity @s weapon.* black_dye run particle minecraft:dust{color:[0,0,0], scale:1} ~.5 ~.5 ~.5 .325 .325 .325 1 25
execute if block ~ ~ ~ prismarine_slab[type=top] if items entity @s weapon.* black_dye run return run setblock ~ ~ ~ dark_prismarine_slab[type=top]
execute if block ~ ~ ~ prismarine_slab[type=bottom] if items entity @s weapon.* black_dye run return run setblock ~ ~ ~ dark_prismarine_slab[type=bottom]
execute if block ~ ~ ~ sand if items entity @s weapon.* red_dye run particle minecraft:dust{color:[1,0,0], scale:1} ~.5 ~.5 ~.5 .325 .325 .325 1 25
execute if block ~ ~ ~ sand if items entity @s weapon.* red_dye run return run setblock ~ ~ ~ red_sand
