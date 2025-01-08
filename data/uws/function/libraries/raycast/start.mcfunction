advancement revoke @s only uws:general/place_block

execute store result score #temp_steps uws.state run attribute @s minecraft:block_interaction_range get
scoreboard players add #temp_steps uws.state 2
execute anchored eyes positioned ^ ^ ^ run function uws:libraries/raycast/recurse