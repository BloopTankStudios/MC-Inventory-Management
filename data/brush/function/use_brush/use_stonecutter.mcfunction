
playsound minecraft:ui.stonecutter.take_result block @a ~.5 ~.5 ~.5 .5

# Check if Wall
execute if block ~ ~ ~ #brush:sc_fence_variant run return run function brush:use_brush/use_sc_to_fence


# Top or Bottom
execute store result score #stonecutter.y bs.data run data get storage bs:out raycast.hit_point[1] 1000
scoreboard players operation #stonecutter.y bs.data %= 1000 bs.const

execute if score #stonecutter.y bs.data matches ..500 run data modify storage brush:stonecutter types.half set value "top"
execute if score #stonecutter.y bs.data matches 501.. run data modify storage brush:stonecutter types.half set value "bottom"

# WIP if normal vector is on y axis

execute if block ~ ~ ~ #brush:sc_slab_wall_variant as @a run say testing
execute if block ~ ~ ~ #brush:sc_slab_wall_variant run return run function brush:use_brush/use_sc_to_slab_or_wall with storage brush:stonecutter types

# Facing

# Block to Stairs

#function brush:use_brush/use_stonecutter_blocks with storage brush:stonecutter types
