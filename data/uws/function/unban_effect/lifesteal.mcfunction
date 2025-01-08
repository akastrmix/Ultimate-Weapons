function uws:libraries/internal/lang/score/validate
execute unless data storage uws:settings banned_effects[{name:lifesteal}] run return run function uws:libraries/internal/text/effect_not_banned

data remove storage uws:settings banned_effects[{name:lifesteal}]
data modify storage uws:lang temp."text.effect" set value {"text":"Lifesteal"}
function uws:libraries/internal/text/unbanned_effect