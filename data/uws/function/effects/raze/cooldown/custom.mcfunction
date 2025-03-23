$execute store result score @s uws.raze_time run scoreboard players add #temp_gametime uws.state $(use_cooldown)
$execute store result score #temp_item_damage uws.state run data get storage uws:settings constant.item_damage -$(item_damage_multiplier)

return 1