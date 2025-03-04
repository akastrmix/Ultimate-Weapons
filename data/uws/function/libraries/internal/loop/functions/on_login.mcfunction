# update lang
function uws:libraries/internal/lang/update_item/equipment

# if active in shadow step
execute if score @s uws.shadow_step_active_time = @s uws.shadow_step_active_time run function uws:effects/shadow_step/update_active_time

# reset
scoreboard players set @s uws.leave_game 0