# Return back to Survival if in Adventure
execute as @a[gamemode=adventure] run gamemode survival

# If has no water in hands and there is a magic stick, replace
execute as @a[predicate=brush:has_retextured_item] run function brush:gui/reset_retextured_items 

# Creates GUI if has brush in hand
execute as @a[predicate=brush:has_brush] run return run function brush:gui/check_player

# Removes GUI
execute as @a[predicate=!brush:has_brush] run title @s actionbar ""
