# Plays writing sound
playsound minecraft:entity.villager.work_cartographer block @a ~.5 ~.5 ~.5 1

# Get UUID lookup
data modify storage inventory:brush storage.UUID0 set from entity @s UUID[0]
data modify storage inventory:brush storage.UUID1 set from entity @s UUID[1]
data modify storage inventory:brush storage.UUID2 set from entity @s UUID[2]
data modify storage inventory:brush storage.UUID3 set from entity @s UUID[3]

# Determine Base and Variant
data modify storage inventory:brush storage.base set from entity @s SelectedItem.components."minecraft:custom_data".variant_base
summon armor_stand -30000000 0 1600 {UUID:[I;127,0,0,1]}
loot replace entity 7F-0-0-0-1 weapon.mainhand mine ~ ~ ~ netherite_pickaxe[enchantments={silk_touch:1}]
data modify storage inventory:brush storage.block set from entity 7F-0-0-0-1 HandItems[0].id
kill 7F-0-0-0-1

# Store and use Values
function brush:storage/set_variant_block with storage inventory:brush storage
data modify storage inventory:brush saved.base set from storage inventory:brush storage.base
function brush:gui/block_gui with storage inventory:brush saved