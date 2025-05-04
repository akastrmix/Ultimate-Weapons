scoreboard players operation @s uws.ready_notify_threshold = #temp_option uws.state
scoreboard players operation @s uws.ready_notify_threshold *= #number_-1 uws.state

execute unless score @s uws.ready_notify_threshold matches 1..200 run scoreboard players set @s uws.ready_notify_threshold 20
function uws:libraries/internal/text/ready_notifications_threshold_set