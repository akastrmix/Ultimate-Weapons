data remove storage uws:temp item_data
data modify storage uws:temp item_data set from entity @s SelectedItem.components.minecraft:custom_data.uws_effects.replenish

execute store result score #temp_distance uws.state run attribute @s minecraft:block_interaction_range get
execute store result storage uws:temp entity_data.distance int 1 run scoreboard players add #temp_distance uws.state 2

scoreboard players set #temp_clear_beetroots uws.state 0
scoreboard players set #temp_clear_carrots uws.state 0
scoreboard players set #temp_clear_nether_wart uws.state 0
scoreboard players set #temp_clear_potatoes uws.state 0
scoreboard players set #temp_clear_wheat uws.state 0
scoreboard players set #temp_cooldown_grant uws.state 0

execute store result score #temp_gametime uws.state run time query gametime
execute store result score #temp_cooldown_status uws.state if score #temp_gametime uws.state < @s uws.replenish_time
execute if score #temp_gametime uws.state < @s uws.replenish_time if function uws:libraries/effect/is_weapon_hints_enabled run function uws:libraries/effect/display_cooldown {effect:replenish,equipment:weapon}

execute store success score #temp_has_beetroots uws.state if items entity @s container.* minecraft:beetroot_seeds
execute if score @s uws.replenish.mined_beetroots matches 1.. anchored eyes positioned ^ ^ ^ run function uws:effects/replenish/crops/beetroots/check with storage uws:temp entity_data

execute store success score #temp_has_carrots uws.state if items entity @s container.* minecraft:carrot
execute if score @s uws.replenish.mined_carrots matches 1.. anchored eyes positioned ^ ^ ^ run function uws:effects/replenish/crops/carrots/check with storage uws:temp entity_data

execute store success score #temp_has_nether_wart uws.state if items entity @s container.* minecraft:nether_wart
execute if score @s uws.replenish.mined_nether_wart matches 1.. anchored eyes positioned ^ ^ ^ run function uws:effects/replenish/crops/nether_wart/check with storage uws:temp entity_data

execute store success score #temp_has_potatoes uws.state if items entity @s container.* minecraft:potato
execute if score @s uws.replenish.mined_potatoes matches 1.. anchored eyes positioned ^ ^ ^ run function uws:effects/replenish/crops/potatoes/check with storage uws:temp entity_data

execute store success score #temp_has_wheat uws.state if items entity @s container.* minecraft:wheat_seeds
execute if score @s uws.replenish.mined_wheat matches 1.. anchored eyes positioned ^ ^ ^ run function uws:effects/replenish/crops/wheat/check with storage uws:temp entity_data

execute if score #temp_clear_beetroots uws.state matches 1 run clear @s minecraft:beetroot_seeds 1
execute if score #temp_clear_carrots uws.state matches 1 run clear @s minecraft:carrot 1
execute if score #temp_clear_nether_wart uws.state matches 1 run clear @s minecraft:nether_wart 1
execute if score #temp_clear_potatoes uws.state matches 1 run clear @s minecraft:potato 1
execute if score #temp_clear_wheat uws.state matches 1 run clear @s minecraft:wheat_seeds 1
execute if score #temp_cooldown_grant uws.state matches 1 run function uws:effects/replenish/apply_cooldown

function uws:effects/replenish/reset_mined