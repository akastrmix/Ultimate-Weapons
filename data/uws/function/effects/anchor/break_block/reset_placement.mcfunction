$data remove storage uws:profile players[{UUID:$(UUID)}].effects.anchor.has_placed
function uws:libraries/internal/lang/score/validate
execute unless entity @s[tag=uws.ignore_voidbox_hints] run function uws:libraries/internal/text/voidbox_placement_reset