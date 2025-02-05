execute store result score #temp_gametime uws.state run time query gametime
execute on origin if score #temp_gametime uws.state < @s uws.homing_time unless entity @s[tag=uws.ignore_cooldown_hints] run function uws:libraries/effect/display_cooldown {effect:homing,equipment:weapon}
execute on origin if score #temp_gametime uws.state < @s uws.homing_time run return 1

execute store result score #temp uws.state run function uws:effects/homing/cooldown/custom with storage uws:temp entity_data
execute if score #temp uws.state matches 0 run function uws:effects/homing/cooldown/fallback