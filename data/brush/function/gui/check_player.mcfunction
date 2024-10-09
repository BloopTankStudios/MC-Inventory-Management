# Adventure mode to prevent normal interaction and allow brush to be used
execute if entity @s[gamemode=survival, predicate=brush:has_interactable] run gamemode adventure

# Replace player items with sticks so brush has the high ground
execute if items entity @s weapon.mainhand minecraft:potion[minecraft:potion_contents={potion:"water"}] run item replace entity @s weapon.mainhand with \
    minecraft:debug_stick[minecraft:custom_model_data=1, minecraft:item_name='{"text":"Water Bottle", "color":"white"}', minecraft:lore=['{"text":"No Effects", "color":"gray", "italic":false}'], minecraft:enchantment_glint_override=0]
execute if items entity @s weapon.offhand minecraft:potion[minecraft:potion_contents={potion:"water"}] run item replace entity @s weapon.offhand with \
    minecraft:debug_stick[minecraft:custom_model_data=1, minecraft:item_name='{"text":"Water Bottle", "color":"white"}', minecraft:lore=['{"text":"No Effects", "color":"gray", "italic":false}'], minecraft:enchantment_glint_override=0]

execute if items entity @s weapon.mainhand minecraft:chorus_fruit run item replace entity @s weapon.mainhand with \
    minecraft:debug_stick[minecraft:custom_model_data=2, minecraft:item_name='{"text":"Chorus Fruit", "color":"white"}', minecraft:enchantment_glint_override=0]
execute if items entity @s weapon.offhand minecraft:chorus_fruit run item replace entity @s weapon.offhand with \
    minecraft:debug_stick[minecraft:custom_model_data=2, minecraft:item_name='{"text":"Chorus Fruit", "color":"white"}', minecraft:enchantment_glint_override=0]

# Show Hitbox in Adventure Mode
execute if items entity @s weapon.mainhand brush run item modify entity @s weapon.mainhand {"function": "minecraft:toggle_tooltips", "toggles":{"minecraft:can_place_on": false}}
execute if items entity @s weapon.offhand brush run item modify entity @s weapon.offhand {"function": "minecraft:toggle_tooltips", "toggles":{"minecraft:can_place_on": false}}
execute if entity @s[gamemode=adventure] run item modify entity @s weapon.mainhand brush:adventure_mode_hitbox
execute if entity @s[gamemode=adventure] run item modify entity @s weapon.offhand brush:adventure_mode_hitbox

# Raycast
execute at @s anchored eyes positioned ^ ^ ^.5 run function bs.raycast:run 

# Return if raycast is null
execute unless data storage bs:out raycast.targeted_block run return run title @s actionbar ""

# Grab Position Data
data modify entity B5-0-0-0-1 Pos set from storage bs:out raycast.targeted_block

# Return if raycast not on variant block
execute at B5-0-0-0-1 unless block ~ ~ ~ #brush:variant_block run return run title @s actionbar ""

# Run Display
execute at B5-0-0-0-1 run function brush:gui/display_gui

# Reset Entity
execute in minecraft:overworld run tp B5-0-0-0-1 -30000000 0 1600