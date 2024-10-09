# Reset Advancement
advancement revoke @s only brush:use_brush

# Reset GUI
schedule function brush:gui/run 1t append

# Check if just placed block
execute if entity @s[tag=placed_block] run return fail

# Run raycast
execute at @s anchored eyes positioned ^ ^ ^.5 run function bs.raycast:run 

# Return if raycast is null
execute unless data storage bs:out raycast.targeted_block run return fail

# Grab Position Data
data modify entity B5-0-0-0-1 Pos set from storage bs:out raycast.targeted_block

# Try to Replace Block
execute if entity @s[predicate=brush:has_stonecutter] at B5-0-0-0-1 if block ~ ~ ~ #brush:stonecutter_variant_block run return run function brush:use_brush/use_stonecutter
execute if entity @s[predicate=brush:has_water] at B5-0-0-0-1 if block ~ ~ ~ #brush:water_variant_block run return run function brush:use_brush/use_water
execute if entity @s[predicate=brush:has_fire] at B5-0-0-0-1 if block ~ ~ ~ #brush:fire_variant_block run return run function brush:use_brush/use_fire
execute if entity @s[predicate=brush:has_honeycomb] at B5-0-0-0-1 if block ~ ~ ~ #brush:honeycomb_variant_block run return run function brush:use_brush/use_honeycomb
execute if entity @s[predicate=brush:has_pickaxe] at B5-0-0-0-1 if block ~ ~ ~ #brush:pickaxe_variant_block run return run function brush:use_brush/use_pickaxe
execute if entity @s[predicate=brush:has_pickaxe] at B5-0-0-0-1 if block ~ ~ ~ #brush:pickaxe_variant_block run return run function brush:use_brush/use_pickaxe
execute if entity @s[predicate=brush:has_dye] at B5-0-0-0-1 if block ~ ~ ~ #brush:dyable_variant_block run return run function brush:use_brush/use_dye
execute at B5-0-0-0-1 if function brush:use_brush/use_custom run return fail
execute if entity @s[predicate=brush:has_brush, predicate=!brush:has_water, predicate=!brush:has_fire] at B5-0-0-0-1 if block ~ ~ ~ #brush:brush_variant_block run return run function brush:use_brush/use_brush