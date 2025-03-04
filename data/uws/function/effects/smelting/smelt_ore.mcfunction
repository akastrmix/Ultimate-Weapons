data remove storage uws:temp item_data
data modify storage uws:temp item_data set from entity @s SelectedItem.components.minecraft:custom_data.uws_effects.smelting

execute store result score #temp_distance uws.state run attribute @s minecraft:block_interaction_range get
execute store result storage uws:temp entity_data.distance int 1 run scoreboard players add #temp_distance uws.state 2

execute store result score #temp_gametime uws.state run time query gametime
execute if score #temp_gametime uws.state < @s uws.smelting_time if function uws:libraries/effect/is_weapon_hints_enabled run function uws:libraries/effect/display_cooldown {effect:smelting,equipment:weapon}
scoreboard players operation #temp_cooldown uws.state = @s uws.smelting_time

execute if score @s uws.smelting.mined_iron matches 1.. anchored eyes positioned ^ ^ ^ run function uws:effects/smelting/ores/iron/check with storage uws:temp entity_data
execute if score @s uws.smelting.mined_deepslate_iron matches 1.. anchored eyes positioned ^ ^ ^ run function uws:effects/smelting/ores/iron/check with storage uws:temp entity_data

execute if score @s uws.smelting.mined_gold matches 1.. anchored eyes positioned ^ ^ ^ run function uws:effects/smelting/ores/gold/check with storage uws:temp entity_data
execute if score @s uws.smelting.mined_deepslate_gold matches 1.. anchored eyes positioned ^ ^ ^ run function uws:effects/smelting/ores/gold/check with storage uws:temp entity_data

execute if score @s uws.smelting.mined_copper matches 1.. anchored eyes positioned ^ ^ ^ run function uws:effects/smelting/ores/copper/check with storage uws:temp entity_data
execute if score @s uws.smelting.mined_deepslate_copper matches 1.. anchored eyes positioned ^ ^ ^ run function uws:effects/smelting/ores/copper/check with storage uws:temp entity_data

execute if score @s uws.smelting.mined_ancient_debris matches 1.. anchored eyes positioned ^ ^ ^ run function uws:effects/smelting/ores/ancient_debris/check with storage uws:temp entity_data

function uws:effects/smelting/reset_mined