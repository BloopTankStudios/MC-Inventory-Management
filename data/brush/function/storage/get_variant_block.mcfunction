
# First, get UUID lookup
data modify storage inventory:brush storage.UUID0 set from entity @s UUID[0]
data modify storage inventory:brush storage.UUID1 set from entity @s UUID[1]
data modify storage inventory:brush storage.UUID2 set from entity @s UUID[2]
data modify storage inventory:brush storage.UUID3 set from entity @s UUID[3]

# Determine Variant
execute if items entity @s weapon.mainhand #brush:cobblestone_variant run data merge storage inventory:brush {storage:{base:cobblestone}}

# Check if data has previously been stored
data remove storage inventory:brush saved
execute store success score result inventory.brush run function brush:storage/get_data with storage inventory:brush storage
# Set Default if not
execute if score result inventory.brush matches 0..0 run function brush:storage/set_default_block with storage inventory:brush storage

# Set Item/Display
data modify storage inventory:brush saved.base set from storage inventory:brush storage.base
function brush:gui/block_gui with storage inventory:brush saved