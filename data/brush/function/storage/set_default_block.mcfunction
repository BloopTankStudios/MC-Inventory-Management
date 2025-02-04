
# Run if nothing saved yet for a default value
#$data merge storage inventory:saved {$(UUID0)$(UUID1)$(UUID2)$(UUID3):{$(base):{display:$(base), block:$(base), sc_type:block}}}
#$data merge storage inventory:brush {saved:{display:$(base), block:$(base), sc_type:block}}
$data merge storage inventory:saved {$(UUID0)$(UUID1)$(UUID2)$(UUID3):{$(base):{block:$(base)}}}
$data merge storage inventory:brush {saved:{block:$(base)}}
