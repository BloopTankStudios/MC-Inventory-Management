# Return back to Survival if in Adventure
execute as @a[gamemode=adventure] run gamemode survival

# If has no water in hands and there is a magic stick, replace
execute as @a[predicate=brush:has_consumable_item] run function brush:inventory/reset_consumables
execute as @a[predicate=brush:has_variant_block] run function brush:inventory/reset_variant_blocks

# Creates GUI if has brush in hand
execute as @a[predicate=brush:has_brush] run return run function brush:player/check_player

# Removes GUI else
execute as @a[predicate=!brush:has_brush] run title @s actionbar ""
