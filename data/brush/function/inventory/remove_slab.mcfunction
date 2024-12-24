# Called from use_brush:shift_stonecut

# Check if has slab
$execute store success score result inventory.brush run clear @s $(slab) 1
execute if score result inventory.brush matches 1..1 run playsound block.stone.place block @a ~ ~ ~
$execute if score result inventory.brush matches 1..1 run return run setblock ~ ~ ~ $(block)

# Check if has block
$execute store success score result inventory.brush run clear @s $(item) 1
$execute if score result inventory.brush matches 1..1 run give @p $(slab)
execute if score result inventory.brush matches 1..1 run playsound block.stone.place block @a ~ ~ ~
$execute if score result inventory.brush matches 1..1 run return run setblock ~ ~ ~ $(block)