execute store result score #temp_gametime uws.state run time query gametime
execute on origin if score #temp_gametime uws.state < @s uws.homing_time run return 1

execute store result score #temp uws.state run function uws:effects/homing/cooldown/custom with entity @s weapon.components.minecraft:custom_data.uws_effects.homing
execute if score #temp uws.state matches 0 run function uws:effects/homing/cooldown/fallback