scoreboard players operation #temp_option uws.state = @s uws_options
scoreboard players reset @s uws_options

function uws:libraries/internal/lang/score/validate
execute if score #temp_option uws.state matches 2 run return run function uws:language/prefer/en_us
execute if score #temp_option uws.state matches 3 run return run function uws:language/prefer/zh_cn
execute if score #temp_option uws.state matches 4 run return run function uws:libraries/internal/option/functions/toggle_cooldown_hints
execute if score #temp_option uws.state matches 5 run return run function uws:libraries/internal/option/functions/toggle_cooldown_display_position
execute if score #temp_option uws.state matches 6 run return run function uws:libraries/internal/option/functions/toggle_scythe_hints
execute if score #temp_option uws.state matches 7 run return run function uws:libraries/internal/option/functions/toggle_voidbox_hints
execute if score #temp_option uws.state matches 8 run return run function uws:libraries/internal/option/functions/toggle_ghead_hints
function uws:libraries/internal/text/uws_options