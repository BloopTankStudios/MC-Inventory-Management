# Check block with raycast using macros
$execute if block ~ ~ ~ #brush:$(base)_variant unless block ~ ~ ~ $(variant) run return run gamemode adventure @s
return fail