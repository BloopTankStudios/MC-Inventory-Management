# Save Data
data modify storage inventory:brush check_block.variant set from entity @s SelectedItem.id
data modify storage inventory:brush check_block.base set from entity @s SelectedItem.components."minecraft:custom_data".variant_base

execute store success score result inventory.brush run function brush:player/check_block_raycast with storage inventory:brush check_block

title @s actionbar ""
execute if score result inventory.brush matches 1..1 run title @s actionbar "Brush to Save"

# Reset Racycast Entity
execute in minecraft:overworld run tp B5-0-0-0-1 -30000000 0 1600