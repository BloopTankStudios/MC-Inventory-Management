# Check block with raycast using macros
$execute if block ~ ~ ~ #brush:group/$(base)_variant unless block ~ ~ ~ $(variant) if entity @s[gamemode=survival] run return run gamemode adventure @s
return fail