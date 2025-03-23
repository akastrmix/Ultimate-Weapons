data remove storage uws:temp item_data
data modify storage uws:temp item_data set from entity @s SelectedItem.components.minecraft:custom_data.uws_effects.smelting

execute store result score #temp_distance uws.state run attribute @s minecraft:block_interaction_range get
execute store result storage uws:temp entity_data.distance int 1 run scoreboard players add #temp_distance uws.state 2

scoreboard players set #temp_cooldown_grant uws.state 0

execute store result score #temp_gametime uws.state run time query gametime
execute store result score #temp_cooldown_status uws.state if score #temp_gametime uws.state < @s uws.smelting_time
execute if score #temp_gametime uws.state < @s uws.smelting_time if function uws:libraries/effect/is_weapon_hints_enabled run function uws:libraries/effect/display_cooldown {effect:smelting,equipment:weapon}

execute if score @s uws.smelting.mined_iron matches 1.. anchored eyes positioned ^ ^ ^ run function uws:effects/smelting/check_ore/iron with storage uws:temp entity_data
execute if score @s uws.smelting.mined_deepslate_iron matches 1.. anchored eyes positioned ^ ^ ^ run function uws:effects/smelting/check_ore/iron with storage uws:temp entity_data

execute if score @s uws.smelting.mined_gold matches 1.. anchored eyes positioned ^ ^ ^ run function uws:effects/smelting/check_ore/gold with storage uws:temp entity_data
execute if score @s uws.smelting.mined_deepslate_gold matches 1.. anchored eyes positioned ^ ^ ^ run function uws:effects/smelting/check_ore/gold with storage uws:temp entity_data

execute if score @s uws.smelting.mined_copper matches 1.. anchored eyes positioned ^ ^ ^ run function uws:effects/smelting/check_ore/copper with storage uws:temp entity_data
execute if score @s uws.smelting.mined_deepslate_copper matches 1.. anchored eyes positioned ^ ^ ^ run function uws:effects/smelting/check_ore/copper with storage uws:temp entity_data

execute if score @s uws.smelting.mined_ancient_debris matches 1.. anchored eyes positioned ^ ^ ^ run function uws:effects/smelting/check_ore/ancient_debris with storage uws:temp entity_data

execute if score #temp_cooldown_grant uws.state matches 1 run function uws:effects/smelting/apply_cooldown

function uws:effects/smelting/reset_mined