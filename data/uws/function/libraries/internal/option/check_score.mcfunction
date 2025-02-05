scoreboard players enable @s uws_options
execute unless score @s uws_options matches 0 run function uws:libraries/internal/option/trigger_option
execute unless score @s uws.leave_game matches 0 run function uws:libraries/internal/lang/update_item/equipment