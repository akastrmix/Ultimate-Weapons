$execute store result score @s uws.lifesteal_time run scoreboard players add #temp_gametime uws.state $(use_cooldown)

execute store result storage uws:temp item_data.healing_amount float 0.1 run data get storage uws:temp item_data.damage 100000
$execute store result storage uws:temp item_data.healing_amount float 0.000001 run data get storage uws:temp item_data.healing_amount $(healing_percentage)
execute if entity @s[type=minecraft:player] run function uws:effects/lifesteal/effect/handle_health with storage uws:temp item_data
execute store result storage uws:temp item_data.item_damage float 0.1 run data get storage uws:temp item_data.damage 100000
$execute store result score #temp_item_damage uws.state run data get storage uws:temp item_data.item_damage -$(item_damage_multiplier)

return 1