# Set raycast values
data modify storage bs:data raycast set value { \
  blocks: true, \
  entities: false, \
  max_distance: 4.5, \
  ignored_blocks: "#brush:skip_raycast", \
  ignored_entities: "#bs.hitbox:intangible", \
}

advancement revoke @a only brush:has_double_slab
advancement revoke @a only brush:has_consumable
advancement revoke @a only brush:place_block
advancement revoke @a only brush:place_double_slab
advancement revoke @a only brush:use_brush

# Default Scoreboard Values
scoreboard objectives add inventory.brush dummy
scoreboard players set 1000 inventory.brush 1000
scoreboard players set 500 inventory.brush 500
scoreboard players set 2 inventory.brush 2
scoreboard players set -1 inventory.brush -1
scoreboard players set gui_anim inventory.brush 0

# Schedule Brush GUI to update using scheduler
function brush:player/scheduler