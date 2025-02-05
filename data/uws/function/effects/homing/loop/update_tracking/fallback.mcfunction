execute store result score #temp2 uws.state run function uws:effects/homing/loop/update_velocity/custom with entity @s weapon.components.minecraft:custom_data.uws_effects.homing
execute if score #temp2 uws.state matches 0 run function uws:effects/homing/loop/update_velocity/fallback
execute store result score @s uws.homing_time run scoreboard players add #temp_gametime uws.state 1

execute store result storage uws:temp entity_data.velocity double 0.001 run scoreboard players get @s uws.state
execute facing entity @n[type=!#uws:homing_ignored,tag=!uws.omitted,distance=..6] eyes positioned 0.0 0.0 0.0 summon minecraft:marker run function uws:effects/homing/loop/get_motion with storage uws:temp entity_data
data modify entity @s Motion set from storage uws:temp entity_data.motion