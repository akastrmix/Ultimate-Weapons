function uws:libraries/internal/lang/score/validate
execute unless data storage uws:settings banned_effects[{name:resilience}] run return run function uws:libraries/internal/text/effect_not_banned

data remove storage uws:settings banned_effects[{name:resilience}]
data modify storage uws:lang temp."text.effect" set value {"text":"Resilience"}
function uws:libraries/internal/text/unbanned_effect