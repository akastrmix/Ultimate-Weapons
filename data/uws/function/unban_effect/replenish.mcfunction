function uws:libraries/internal/lang/score/validate
execute unless data storage uws:settings banned_effects[{name:replenish}] run return run function uws:libraries/internal/text/effect_not_banned

data remove storage uws:settings banned_effects[{name:replenish}]
scoreboard players reset #uws_general uws.replenish_time

data modify storage uws:lang temp."text.effect" set value {"text":"Replenish"}
function uws:libraries/internal/text/unbanned_effect