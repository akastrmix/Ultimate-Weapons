function uws:libraries/internal/lang/score/validate
execute if data storage uws:settings banned_effects[{name:replenish}] run return run function uws:libraries/internal/text/already_banned_effect

data modify storage uws:temp effect.name set value replenish
function uws:libraries/effect/add_to_banlist
scoreboard players set #uws_general uws.replenish_time 1

data modify storage uws:lang temp."text.effect" set value {"text":"Replenish "}
function uws:libraries/internal/text/banned_effect