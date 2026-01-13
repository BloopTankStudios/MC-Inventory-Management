# Reset Variant
$item modify entity @s $(slot) brush:from_variant_item

# If has slab still
$execute unless items entity @s $(slot) #brush:variant_item[custom_data] run return fail

say hasSlab

# Get Block Data
summon armor_stand -30000000 0 1600 {UUID:[I;127,0,0,1]}
$item replace entity 7F-0-0-0-1 weapon.mainhand from entity @s $(slot)
data modify storage inventory:brush give_items.id set from entity 7F-0-0-0-1 HandItems[0].components."minecraft:custom_data".variant_base
kill 7F-0-0-0-1

# Remove Properties
$item modify entity @s $(slot) {"function": "minecraft:set_components",components:{"!minecraft:custom_data":{}}}

# Add Slab
function brush:inventory/give_slab with storage inventory:brush give_items
