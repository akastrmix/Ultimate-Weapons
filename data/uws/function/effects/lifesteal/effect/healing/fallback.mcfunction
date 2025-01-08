execute store result score @s uws.lifesteal_time run scoreboard players add #temp_gametime uws.state 0

execute store result storage uws:temp item_data.healing_amount float 0.000001 run data get storage uws:temp item_data.damage 250000
execute if entity @s[type=minecraft:player] run function uws:effects/lifesteal/effect/handle_health with storage uws:temp item_data
execute store result score #temp_item_damage uws.state run data get storage uws:temp item_data.damage -500000