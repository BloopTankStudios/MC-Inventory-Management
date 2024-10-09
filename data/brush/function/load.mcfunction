# Set raycast values
data modify storage bs:data raycast set value { \
  blocks: true, \
  entities: false, \
  max_distance: 4.5, \
  ignored_blocks: "#brush:skip_raycast", \
  ignored_entities: "#bs.hitbox:intangible", \
}

advancement revoke @a only brush:use_brush
advancement revoke @a only brush:place_block

# Schedule Brush GUI to update using scheduler
function brush:gui/scheduler