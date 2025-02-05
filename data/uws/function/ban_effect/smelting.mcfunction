function uws:libraries/internal/lang/score/validate
execute if data storage uws:settings banned_effects[{name:smelting}] run return run function uws:libraries/internal/text/already_banned_effect

data modify storage uws:temp effect.name set value smelting
function uws:libraries/effect/add_to_banlist
scoreboard players set #uws_general uws.smelting_time 1

data modify storage uws:lang temp."text.effect" set value {"text":"Smelting "}
function uws:libraries/internal/text/banned_effect