scoreboard players reset @s uws.shadow_step_active_time

execute store result score #temp_gametime uws.state run time query gametime
$execute store result score @s uws.shadow_step_time run scoreboard players add #temp_gametime uws.state $(use_cooldown)
$playsound $(sound_event_deactivate) player @a ~ ~ ~ 1 $(sound_pitch_deactivate)