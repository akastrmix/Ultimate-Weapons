execute store result score #temp_x_coords uws.state run data get entity @s Pos[0] 100
execute store result score #temp_y_coords uws.state run data get entity @s Pos[1] 100
execute store result score #temp_z_coords uws.state run data get entity @s Pos[2] 100

$execute facing entity @n[type=!#uws:homing_ignored,tag=!uws.omitted,distance=..$(effective_radius)] eyes run summon minecraft:marker ^ ^ ^1 {UUID:[I;1048576,0,0,1]}

execute store result score #temp2_x_coords uws.state run data get entity 100000-0-0-0-1 Pos[0] 100
execute store result score #temp2_y_coords uws.state run data get entity 100000-0-0-0-1 Pos[1] 100
execute store result score #temp2_z_coords uws.state run data get entity 100000-0-0-0-1 Pos[2] 100

kill 100000-0-0-0-1

$execute store result storage uws:temp entity_data.x_offset int $(velocity) run scoreboard players operation #temp2_x_coords uws.state -= #temp_x_coords uws.state
$execute store result storage uws:temp entity_data.y_offset int $(velocity) run scoreboard players operation #temp2_y_coords uws.state -= #temp_y_coords uws.state
$execute store result storage uws:temp entity_data.z_offset int $(velocity) run scoreboard players operation #temp2_z_coords uws.state -= #temp_z_coords uws.state

execute store result entity @s Motion[0] double 0.00001 run data get storage uws:temp entity_data.x_offset
execute store result entity @s Motion[1] double 0.00001 run data get storage uws:temp entity_data.y_offset
execute store result entity @s Motion[2] double 0.00001 run data get storage uws:temp entity_data.z_offset