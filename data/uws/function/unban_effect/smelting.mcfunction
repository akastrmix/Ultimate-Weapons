function uws:libraries/internal/lang/score/validate
execute unless data storage uws:settings banned_effects[{name:smelting}] run return run function uws:libraries/internal/text/effect_not_banned

data remove storage uws:settings banned_effects[{name:smelting}]
scoreboard players reset #uws_general uws.smelting_time

execute as @a run function uws:effects/smelting/reset_mined
execute as @a if items entity @s weapon.mainhand *[enchantments~[{enchantments:"uws:smelting"}]] run function uws:effects/smelting/loop

data modify storage uws:lang temp."text.effect" set value {"text":"Smelting"}
function uws:libraries/internal/text/unbanned_effect