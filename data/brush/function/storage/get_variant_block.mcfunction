# Auto Generated


# First, get UUID lookup
data modify storage inventory:brush storage.UUID0 set from entity @s UUID[0]
data modify storage inventory:brush storage.UUID1 set from entity @s UUID[1]
data modify storage inventory:brush storage.UUID2 set from entity @s UUID[2]
data modify storage inventory:brush storage.UUID3 set from entity @s UUID[3]

# Determine Variant
execute if items entity @s weapon.mainhand dark_oak_log run data merge storage inventory:brush {storage:{base:dark_oak_log}}
execute if items entity @s weapon.mainhand red_sandstone run data merge storage inventory:brush {storage:{base:red_sandstone}}
execute if items entity @s weapon.mainhand prismarine run data merge storage inventory:brush {storage:{base:prismarine}}
execute if items entity @s weapon.mainhand weathered_copper run data merge storage inventory:brush {storage:{base:weathered_copper}}
execute if items entity @s weapon.mainhand waxed_exposed_copper run data merge storage inventory:brush {storage:{base:waxed_exposed_copper}}
execute if items entity @s weapon.mainhand crimson_stem run data merge storage inventory:brush {storage:{base:crimson_stem}}
execute if items entity @s weapon.mainhand crimson_planks run data merge storage inventory:brush {storage:{base:crimson_planks}}
execute if items entity @s weapon.mainhand oxidized_copper run data merge storage inventory:brush {storage:{base:oxidized_copper}}
execute if items entity @s weapon.mainhand sandstone run data merge storage inventory:brush {storage:{base:sandstone}}
execute if items entity @s weapon.mainhand bamboo_planks run data merge storage inventory:brush {storage:{base:bamboo_planks}}
execute if items entity @s weapon.mainhand basalt run data merge storage inventory:brush {storage:{base:basalt}}
execute if items entity @s weapon.mainhand cobblestone run data merge storage inventory:brush {storage:{base:cobblestone}}
execute if items entity @s weapon.mainhand end_stone run data merge storage inventory:brush {storage:{base:end_stone}}
execute if items entity @s weapon.mainhand spruce_planks run data merge storage inventory:brush {storage:{base:spruce_planks}}
execute if items entity @s weapon.mainhand quartz_block run data merge storage inventory:brush {storage:{base:quartz_block}}
execute if items entity @s weapon.mainhand copper_block run data merge storage inventory:brush {storage:{base:copper_block}}
execute if items entity @s weapon.mainhand jungle_log run data merge storage inventory:brush {storage:{base:jungle_log}}
execute if items entity @s weapon.mainhand cobbled_deepslate run data merge storage inventory:brush {storage:{base:cobbled_deepslate}}
execute if items entity @s weapon.mainhand nether_bricks run data merge storage inventory:brush {storage:{base:nether_bricks}}
execute if items entity @s weapon.mainhand red_nether_bricks run data merge storage inventory:brush {storage:{base:red_nether_bricks}}
execute if items entity @s weapon.mainhand spruce_log run data merge storage inventory:brush {storage:{base:spruce_log}}
execute if items entity @s weapon.mainhand birch_log run data merge storage inventory:brush {storage:{base:birch_log}}
execute if items entity @s weapon.mainhand carved_pumpkin run data merge storage inventory:brush {storage:{base:carved_pumpkin}}
execute if items entity @s weapon.mainhand bricks run data merge storage inventory:brush {storage:{base:bricks}}
execute if items entity @s weapon.mainhand birch_planks run data merge storage inventory:brush {storage:{base:birch_planks}}
execute if items entity @s weapon.mainhand oak_planks run data merge storage inventory:brush {storage:{base:oak_planks}}
execute if items entity @s weapon.mainhand dirt run data merge storage inventory:brush {storage:{base:dirt}}
execute if items entity @s weapon.mainhand dark_oak_planks run data merge storage inventory:brush {storage:{base:dark_oak_planks}}
execute if items entity @s weapon.mainhand purpur_block run data merge storage inventory:brush {storage:{base:purpur_block}}
execute if items entity @s weapon.mainhand exposed_copper run data merge storage inventory:brush {storage:{base:exposed_copper}}
execute if items entity @s weapon.mainhand mangrove_log run data merge storage inventory:brush {storage:{base:mangrove_log}}
execute if items entity @s weapon.mainhand warped_stem run data merge storage inventory:brush {storage:{base:warped_stem}}
execute if items entity @s weapon.mainhand acacia_planks run data merge storage inventory:brush {storage:{base:acacia_planks}}
execute if items entity @s weapon.mainhand mangrove_planks run data merge storage inventory:brush {storage:{base:mangrove_planks}}
execute if items entity @s weapon.mainhand cherry_planks run data merge storage inventory:brush {storage:{base:cherry_planks}}
execute if items entity @s weapon.mainhand end_stone_bricks run data merge storage inventory:brush {storage:{base:end_stone_bricks}}
execute if items entity @s weapon.mainhand waxed_oxidized_copper run data merge storage inventory:brush {storage:{base:waxed_oxidized_copper}}
execute if items entity @s weapon.mainhand cherry_log run data merge storage inventory:brush {storage:{base:cherry_log}}
execute if items entity @s weapon.mainhand dark_prismarine run data merge storage inventory:brush {storage:{base:dark_prismarine}}
execute if items entity @s weapon.mainhand oak_log run data merge storage inventory:brush {storage:{base:oak_log}}
execute if items entity @s weapon.mainhand jungle_planks run data merge storage inventory:brush {storage:{base:jungle_planks}}
execute if items entity @s weapon.mainhand tuff run data merge storage inventory:brush {storage:{base:tuff}}
execute if items entity @s weapon.mainhand waxed_weathered_copper run data merge storage inventory:brush {storage:{base:waxed_weathered_copper}}
execute if items entity @s weapon.mainhand acacia_log run data merge storage inventory:brush {storage:{base:acacia_log}}
execute if items entity @s weapon.mainhand waxed_copper_block run data merge storage inventory:brush {storage:{base:waxed_copper_block}}
execute if items entity @s weapon.mainhand warped_planks run data merge storage inventory:brush {storage:{base:warped_planks}}
execute if items entity @s weapon.mainhand blackstone run data merge storage inventory:brush {storage:{base:blackstone}}

# Check if data has previously been stored
data remove storage inventory:brush saved
execute store success score result inventory.brush run function brush:storage/get_data with storage inventory:brush storage
# Set Default if not
execute if score result inventory.brush matches 0..0 run function brush:storage/set_default_block with storage inventory:brush storage

# Set Item/Display
data modify storage inventory:brush saved.base set from storage inventory:brush storage.base
function brush:gui/block_gui with storage inventory:brush saved
