# say hello
tag @a remove placed_block
function brush:player/run
scoreboard players add gui_anim inventory.brush 5
execute if score gui_anim inventory.brush matches 60.. run scoreboard players set gui_anim inventory.brush 0
schedule function brush:player/scheduler 5t replace