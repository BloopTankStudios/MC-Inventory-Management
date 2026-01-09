
playsound minecraft:ui.stonecutter.take_result block @a ~.5 ~.5 ~.5 .5

## Wall to Fence
execute if block ~ ~ ~ #brush:sc_fence_variant run return run function brush:use_brush/use_sc_to_fence


## Top or Bottom
execute store result score sc.y inventory.brush run data get storage bs:out raycast.hit_point[1] 1000

# Raycast may not go through block and detect wrong "top"/"bottom" if on y-axis
execute store result score sc.y_normal inventory.brush run data get storage bs:out raycast.hit_normal[1] 10
scoreboard players operation sc.y inventory.brush -= sc.y_normal inventory.brush

# Determine bottom or top half
scoreboard players operation sc.y inventory.brush %= 1000 inventory.brush
execute if score sc.y inventory.brush matches ..500 run data modify storage inventory:brush stonecutter.half set value "top"
execute if score sc.y inventory.brush matches 501.. run data modify storage inventory:brush stonecutter.half set value "bottom"

## Stair to Slab or Wall
execute if block ~ ~ ~ #brush:sc_slab_wall_variant run return run function brush:use_brush/use_sc_to_slab_or_wall with storage inventory:brush stonecutter


## Facing
data remove storage inventory:brush stonecutter.facing

# X and Z Normals
execute store result score sc.x_normal inventory.brush run data get storage bs:out raycast.hit_normal[0] 1
execute store result score sc.z_normal inventory.brush run data get storage bs:out raycast.hit_normal[2] 1
execute if score sc.x_normal inventory.brush matches 1..1 run data modify storage inventory:brush stonecutter.facing set value "west"
execute if score sc.x_normal inventory.brush matches -1..-1 run data modify storage inventory:brush stonecutter.facing set value "east"
execute if score sc.z_normal inventory.brush matches 1..1 run data modify storage inventory:brush stonecutter.facing set value "north"
execute if score sc.z_normal inventory.brush matches -1..-1 run data modify storage inventory:brush stonecutter.facing set value "south"

## Block to Stairs
execute if data storage inventory:brush stonecutter.facing run function brush:use_brush/use_sc_to_stairs with storage inventory:brush stonecutter

# Which side of the block is raycast closer to
execute store result score sc.x inventory.brush run data get storage bs:out raycast.hit_point[0] 1000
execute store result score sc.z inventory.brush run data get storage bs:out raycast.hit_point[2] 1000
execute store result score sc.x_dist_center inventory.brush run scoreboard players operation sc.x inventory.brush %= 1000 inventory.brush
execute store result score sc.z_dist_center inventory.brush run scoreboard players operation sc.z inventory.brush %= 1000 inventory.brush

scoreboard players operation sc.x_dist_center inventory.brush -= 500 inventory.brush
scoreboard players operation sc.z_dist_center inventory.brush -= 500 inventory.brush
execute if score sc.x_dist_center inventory.brush matches ..-1 run scoreboard players operation sc.x_dist_center inventory.brush *= -1 inventory.brush
execute if score sc.z_dist_center inventory.brush matches ..-1 run scoreboard players operation sc.z_dist_center inventory.brush *= -1 inventory.brush
scoreboard players operation sc.x_dist_center inventory.brush %= 500 inventory.brush
scoreboard players operation sc.z_dist_center inventory.brush %= 500 inventory.brush

execute if score sc.x inventory.brush matches ..500 run data modify storage inventory:brush stonecutter.facing set value "east"
execute if score sc.x inventory.brush matches 501.. run data modify storage inventory:brush stonecutter.facing set value "west"
execute if score sc.x_dist_center inventory.brush < sc.z_dist_center inventory.brush if score sc.z inventory.brush matches ..500 run data modify storage inventory:brush stonecutter.facing set value "south"
execute if score sc.x_dist_center inventory.brush < sc.z_dist_center inventory.brush if score sc.z inventory.brush matches 501.. run data modify storage inventory:brush stonecutter.facing set value "north"

## Block to Stairs
function brush:use_brush/use_sc_to_stairs with storage inventory:brush stonecutter
