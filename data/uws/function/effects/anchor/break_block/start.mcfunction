advancement revoke @s only uws:effects/anchor

function uws:effects/anchor/get_player_id with entity @s

data modify storage uws:temp entity_data.player set from entity @s UUID
execute store result storage uws:temp entity_data.gametime int 1 run time query gametime
execute store result score #temp_distance uws.state run attribute @s minecraft:entity_interaction_range get
execute store result storage uws:temp entity_data.distance int 1 run scoreboard players add #temp_distance uws.state 2

execute anchored eyes positioned ^ ^ ^ run function uws:effects/anchor/break_block/find_interaction with storage uws:temp entity_data