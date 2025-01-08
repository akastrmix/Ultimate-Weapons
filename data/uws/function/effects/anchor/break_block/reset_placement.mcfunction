$data remove storage uws:profile players[{UUID:$(UUID)}].effects.anchor.has_placed
execute unless entity @s[tag=ignore_voidbox_hints] run function uws:libraries/internal/text/voidbox_placement_reset