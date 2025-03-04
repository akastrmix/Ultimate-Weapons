# on login
execute unless score @s uws.leave_game matches 0 run function uws:libraries/internal/loop/functions/on_login

# option
scoreboard players enable @s uws_options
execute unless score @s uws_options matches 0 run function uws:libraries/internal/option/trigger