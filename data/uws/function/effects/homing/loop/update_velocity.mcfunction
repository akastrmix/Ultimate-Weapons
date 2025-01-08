execute store result score #temp2 uws.state run function uws:effects/homing/loop/accelerate/custom with entity @s weapon.components.minecraft:custom_data.uws_effects.homing
execute if score #temp2 uws.state matches 0 run function uws:effects/homing/loop/accelerate/fallback
execute store result score @s uws.homing_time run scoreboard players add #temp_gametime uws.state 1

function uws:effects/homing/loop/update_motion with entity @s weapon.components.minecraft:custom_data.uws_effects.homing