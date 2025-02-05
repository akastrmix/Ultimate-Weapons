function uws:libraries/internal/lang/score/validate
execute if data storage uws:settings banned_effects[{name:lightning_strike}] run return run function uws:libraries/internal/text/already_banned_effect

data modify storage uws:temp effect.name set value lightning_strike
function uws:libraries/effect/add_to_banlist

data modify storage uws:lang temp."text.effect" set value {"text":"Lightning Strike "}
function uws:libraries/internal/text/banned_effect