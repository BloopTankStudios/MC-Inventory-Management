
# Display Stonecutter GUI
#title @s actionbar "Shift-Brush to Restore Block"
execute if block ~ ~ ~ #stairs run title @s actionbar [{"translate":"bgui.align.right"}, {"translate":"bgui.slot"}, {"translate":"bgui.slot.current"}, {"translate":"bgui.icon.stairs"}, {"translate":"bgui.slot"}, {"translate":"bgui.icon.block"}, {"translate":"bgui.using.stonecutter"}, {"translate":"bgui.align.count_2"}]
execute if block ~ ~ ~ #slabs run title @s actionbar [{"translate":"bgui.align.right"}, {"translate":"bgui.slot"}, {"translate":"bgui.slot.current"}, {"translate":"bgui.icon.slab"}, {"translate":"bgui.slot"}, {"translate":"bgui.icon.block"}, {"translate":"bgui.using.stonecutter"}, {"translate":"bgui.align.count_2"}]
execute if block ~ ~ ~ #walls run title @s actionbar [{"translate":"bgui.align.right"}, {"translate":"bgui.slot"}, {"translate":"bgui.slot.current"}, {"translate":"bgui.icon.wall"}, {"translate":"bgui.slot"}, {"translate":"bgui.icon.block"}, {"translate":"bgui.using.stonecutter"}, {"translate":"bgui.align.count_2"}]
execute if block ~ ~ ~ #fences run title @s actionbar [{"translate":"bgui.align.right"}, {"translate":"bgui.slot"}, {"translate":"bgui.slot.current"}, {"translate":"bgui.icon.fence"}, {"translate":"bgui.slot"}, {"translate":"bgui.icon.block"}, {"translate":"bgui.using.stonecutter"}, {"translate":"bgui.align.count_2"}]

# Reset Entity
execute in minecraft:overworld run tp B5-0-0-0-1 -30000000 0 1600