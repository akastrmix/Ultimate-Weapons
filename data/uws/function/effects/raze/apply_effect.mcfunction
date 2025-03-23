data remove storage uws:temp item_data
data modify storage uws:temp item_data set from entity @s SelectedItem.components.minecraft:custom_data.uws_effects.raze

execute store result score #temp_distance uws.state run attribute @s minecraft:block_interaction_range get
execute store result storage uws:temp entity_data.distance int 1 run scoreboard players add #temp_distance uws.state 2

scoreboard players set #temp_cooldown_grant uws.state 0

execute store result score #temp_gametime uws.state run time query gametime
execute store result score #temp_cooldown_status uws.state if score #temp_gametime uws.state < @s uws.raze_time
execute if score #temp_gametime uws.state < @s uws.raze_time if function uws:libraries/effect/is_weapon_hints_enabled run function uws:libraries/effect/display_cooldown {effect:raze,equipment:weapon}

execute anchored eyes positioned ^ ^ ^ run function uws:effects/raze/effect/check with storage uws:temp entity_data
execute if score #temp_cooldown_grant uws.state matches 1 run function uws:effects/raze/apply_cooldown

function uws:effects/raze/reset_mined