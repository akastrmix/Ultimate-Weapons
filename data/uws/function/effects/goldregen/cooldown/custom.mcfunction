$execute store result score @s uws.goldregen_time run scoreboard players add #temp_gametime uws.state $(use_cooldown)
$scoreboard players set #temp_cooldown uws.state $(use_cooldown)
$playsound $(sound_event) player @s ~ ~ ~ 1 $(sound_pitch)

return 1