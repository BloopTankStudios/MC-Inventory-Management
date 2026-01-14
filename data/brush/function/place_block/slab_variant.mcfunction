advancement revoke @s only brush:place_variant_slab

# Switch between give item and set as slab
execute if entity @s[predicate=brush:item_has_also_slab] run return run item modify entity @s weapon.mainhand brush:give_slab_back
execute if entity @s[gamemode=!creative] run item modify entity @s weapon.mainhand brush:has_extra_slab