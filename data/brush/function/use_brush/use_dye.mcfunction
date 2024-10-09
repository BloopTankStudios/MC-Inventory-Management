# Auto Generated

playsound minecraft:item.brush.brushing.sand.complete block @a ~.5 ~.5 ~.5 .5

execute if block ~ ~ ~ prismarine if items entity @s weapon.* black_dye run particle minecraft:dust{color:[0,0,0], scale:1} ~.5 ~.5 ~.5 .325 .325 .325 1 25
execute if block ~ ~ ~ prismarine if items entity @s weapon.* black_dye run return run setblock ~ ~ ~ dark_prismarine
execute if block ~ ~ ~ sand if items entity @s weapon.* red_dye run particle minecraft:dust{color:[1,0,0], scale:1} ~.5 ~.5 ~.5 .325 .325 .325 1 25
execute if block ~ ~ ~ sand if items entity @s weapon.* red_dye run return run setblock ~ ~ ~ red_sand
