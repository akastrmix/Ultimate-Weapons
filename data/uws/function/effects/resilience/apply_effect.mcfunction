execute if data storage uws:settings banned_effects[{name:resilience}] run return fail

execute store result score #temp_gametime uws.state run time query gametime
execute if score #temp_gametime uws.state < @s uws.resilience_time run return fail
execute store result score @s uws.resilience_time run scoreboard players add #temp_gametime uws.state 20

data remove storage uws:temp item_data
data modify storage uws:temp item_data set from entity @s equipment.chest.components.minecraft:custom_data.uws_effects.resilience

execute unless data storage uws:temp item_data.effects[0] run function uws:effects/resilience/effect/fallback
execute if data storage uws:temp item_data.effects[0] run function uws:effects/resilience/effect/custom/loop_effects