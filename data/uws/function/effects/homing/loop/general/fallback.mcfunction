execute if score @s uws.hint_time matches 0 run return fail
scoreboard players remove @s uws.hint_time 1
execute if data entity @s {inGround:1b} run return fail

execute unless entity @s[tag=uws.ineffective] run function uws:effects/homing/loop/find_target
particle minecraft:witch ~ ~ ~ 0 0 0 0 1 force
function uws:libraries/schedule/handle_input {with:{command:"function uws:effects/homing/loop/general/fallback",time:1}}