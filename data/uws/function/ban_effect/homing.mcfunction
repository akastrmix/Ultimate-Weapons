function uws:libraries/internal/lang/score/validate
execute if data storage uws:settings banned_effects[{name:homing}] run return run function uws:libraries/internal/text/already_banned_effect

data modify storage uws:temp effect.name set value homing
function uws:libraries/effect/add_to_banlist

data modify storage uws:lang temp."text.effect" set value {"text":"Homing "}
function uws:libraries/internal/text/banned_effect