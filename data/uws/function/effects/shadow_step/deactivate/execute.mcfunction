scoreboard players reset @s uws.shadow_step_active_time

execute store result score #temp_gametime uws.state run time query gametime
$execute store result score @s uws.shadow_step_time run scoreboard players add #temp_gametime uws.state $(use_cooldown)
$scoreboard players set #temp_cooldown uws.state $(use_cooldown)
$playsound $(sound_event_deactivate) player @a ~ ~ ~ 1 $(sound_pitch_deactivate)

execute unless entity @s[tag=!uws.use_actionbar_ready_notifications,tag=!uws.use_chat_ready_notifications] run function uws:libraries/effect/attempt_ready_notification {effect:"Shadow Step"}