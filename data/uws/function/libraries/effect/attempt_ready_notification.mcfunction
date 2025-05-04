execute unless score @s uws.ready_notify_threshold matches 1..200 run scoreboard players set @s uws.ready_notify_threshold 20
execute if score #temp_cooldown uws.state < @s uws.ready_notify_threshold run return fail

$data modify storage uws:temp number.effect set value "$(effect)"
execute store result storage uws:temp number.time int 1 run scoreboard players get #temp_cooldown uws.state
function uws:libraries/effect/schedule_ready_notification with storage uws:temp number