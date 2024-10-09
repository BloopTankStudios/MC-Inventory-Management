
execute if block ~ ~ ~ cobblestone_stairs positioned ~ ~.1 ~ run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone_slab",count:1}}
$execute if block ~ ~ ~ cobblestone_stairs[half=$(half)] run return run setblock ~ ~ ~ cobblestone_slab[type=$(half)]
execute if block ~ ~ ~ cobblestone_stairs run return run setblock ~ ~ ~ cobblestone_wall
