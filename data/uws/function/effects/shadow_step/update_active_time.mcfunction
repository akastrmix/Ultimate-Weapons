scoreboard players remove @s uws.shadow_step_active_time 1

execute unless score @s uws.shadow_step_active_time matches ..0 run function uws:libraries/schedule/handle_input {with:{command:"function uws:effects/shadow_step/update_active_time",time:1}}
execute if score @s uws.shadow_step_active_time matches ..0 run function uws:effects/shadow_step/deactivate/prepare with entity @s