function uws:libraries/internal/lang/score/validate
execute if data storage uws:settings banned_effects[{name:resilience}] run return run function uws:libraries/internal/text/already_banned_effect

data modify storage uws:temp effect.name set value resilience
function uws:libraries/effect/add_to_banlist

data modify storage uws:lang temp."text.effect" set value {"text":"Resilience "}
function uws:libraries/internal/text/banned_effect

execute as @a if items entity @s armor.chest *[enchantments~[{enchantments:"uws:resilience"}]] run function uws:libraries/internal/text/effect_banned