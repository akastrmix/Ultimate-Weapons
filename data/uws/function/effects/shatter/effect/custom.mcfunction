$execute store result score @s uws.shatter_time run scoreboard players add #temp_gametime uws.state $(use_cooldown)
$execute store result score #temp_item_damage uws.state run data get storage uws:settings constant.item_damage -$(item_damage_multiplier)

$setblock ~ ~ ~ air $(mode)
$particle $(particle_id) ~ ~ ~ $(particle_spread) $(particle_spread) $(particle_spread) $(particle_speed) $(particle_count) force
$playsound $(sound_event) block @a ~ ~ ~ 1 $(sound_pitch)

return 1