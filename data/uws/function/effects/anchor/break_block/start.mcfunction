advancement revoke @s only uws:effects/anchor

data remove storage uws:temp player
data modify storage uws:temp player set from entity @s

data modify storage uws:temp entity_data.player set from storage uws:temp player.UUID
execute store result storage uws:temp entity_data.gametime int 1 run time query gametime
execute store result score #temp_distance uws.state run attribute @s minecraft:entity_interaction_range get
execute store result storage uws:temp entity_data.distance int 1 run scoreboard players add #temp_distance uws.state 2

function uws:effects/anchor/get_player_id with storage uws:temp player
execute anchored eyes positioned ^ ^ ^ run function uws:effects/anchor/break_block/find_interaction with storage uws:temp entity_data