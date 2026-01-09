# Check block with raycast using macros
execute if block ~ ~ ~ #brush:cobblestone_variant unless block ~ ~ ~ stone_brick_slab run return run gamemode adventure @s
return fail