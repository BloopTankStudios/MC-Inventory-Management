# Adventure mode to prevent normal interaction and allow brush to be used
execute if entity @s[gamemode=survival, predicate=brush:has_interactable] run gamemode adventure

# Replace water bottle with debug stick to prevent drinking
execute if items entity @s weapon.mainhand minecraft:potion[minecraft:potion_contents={potion:"water"}] run item replace entity @s weapon.mainhand with \
    minecraft:debug_stick[minecraft:custom_model_data=1, minecraft:item_name='{"text":"Water Bottle", "color":"white"}', minecraft:lore=['{"text":"No Effects", "color":"gray", "italic":false}'], minecraft:enchantment_glint_override=false]
execute if items entity @s weapon.offhand minecraft:potion[minecraft:potion_contents={potion:"water"}] run item replace entity @s weapon.offhand with \
    minecraft:debug_stick[minecraft:custom_model_data=1, minecraft:item_name='{"text":"Water Bottle", "color":"white"}', minecraft:lore=['{"text":"No Effects", "color":"gray", "italic":false}'], minecraft:enchantment_glint_override=false]

# Brush can be used in adventure mode
execute if items entity @s weapon.mainhand brush run item modify entity @s weapon.mainhand {function:set_components, components:{can_place_on:{predicates:[{}],show_in_tooltip:false}}}
execute if items entity @s weapon.offhand brush run item modify entity @s weapon.offhand {function:set_components, components:{can_place_on:{predicates:[{}],show_in_tooltip:false}}}

# When in adventure mode, make blocks breakable and disable consuming items
execute if entity @s[gamemode=adventure] run item modify entity @s weapon.mainhand brush:disable_item
execute if entity @s[gamemode=adventure] run item modify entity @s weapon.offhand brush:disable_item


# If has base variant item in hand, replace with stored variant
execute if items entity @s weapon.mainhand #brush:variant_group_base[!custom_data] run \
    return run function brush:storage/get_variant_block

# Doesn't need raycast with variant in hand, if not crouching
execute if items entity @s weapon.mainhand #brush:variant_group[custom_data] unless entity @s[predicate=brush:is_sneaking] run return run title @s actionbar ""

# Raycast
execute at @s anchored eyes positioned ^ ^ ^.5 run function bs.raycast:run

# Return if raycast is null
execute unless data storage bs:out raycast.targeted_block run return run title @s actionbar ""

# Grab Position Data
data modify entity B5-0-0-0-1 Pos set from storage bs:out raycast.targeted_block

# Return if raycast not on variant block
execute at B5-0-0-0-1 unless block ~ ~ ~ #brush:variant_block run return run title @s actionbar ""

# Run Display
execute at B5-0-0-0-1 if items entity @s weapon.mainhand #brush:variant_group[custom_data] run return run function brush:player/check_block
execute at B5-0-0-0-1 if entity @s[predicate=brush:is_sneaking, predicate=brush:has_stonecutter] if block ~ ~ ~ #brush:stonecut_block run return run function brush:gui/stonecutter_gui
execute at B5-0-0-0-1 run function brush:gui/brush_gui

# Reset Entity
execute in minecraft:overworld run tp B5-0-0-0-1 -30000000 0 1600