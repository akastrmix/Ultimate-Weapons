$execute on origin store result score @s uws.homing_time run scoreboard players add #temp_gametime uws.state $(use_cooldown)
$scoreboard players set #temp_cooldown uws.state $(use_cooldown)

return 1