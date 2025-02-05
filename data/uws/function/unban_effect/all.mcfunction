data modify storage uws:settings banned_effects set value []
scoreboard players reset #uws_general uws.smelting_time

execute as @a run function uws:effects/smelting/reset_mined
execute as @a if items entity @s weapon.mainhand *[enchantments~[{enchantments:"uws:smelting"}]] run function uws:effects/smelting/loop

function uws:libraries/internal/lang/score/validate
function uws:libraries/internal/text/unbanned_all_effects