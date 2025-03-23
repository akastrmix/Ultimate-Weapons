item modify entity @s contents {"function":"minecraft:set_components","components":{"!minecraft:custom_data":{}}}

execute if score #temp_cooldown_status uws.state matches 1 run return fail

execute positioned ~1 ~1 ~1 if block ~ ~ ~ #uws:raze_valid_blocks run setblock ~ ~ ~ air destroy
execute positioned ~1 ~1 ~ if block ~ ~ ~ #uws:raze_valid_blocks run setblock ~ ~ ~ air destroy
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ #uws:raze_valid_blocks run setblock ~ ~ ~ air destroy
execute positioned ~ ~1 ~1 if block ~ ~ ~ #uws:raze_valid_blocks run setblock ~ ~ ~ air destroy
execute positioned ~ ~1 ~ if block ~ ~ ~ #uws:raze_valid_blocks run setblock ~ ~ ~ air destroy
execute positioned ~ ~1 ~-1 if block ~ ~ ~ #uws:raze_valid_blocks run setblock ~ ~ ~ air destroy
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ #uws:raze_valid_blocks run setblock ~ ~ ~ air destroy
execute positioned ~-1 ~1 ~ if block ~ ~ ~ #uws:raze_valid_blocks run setblock ~ ~ ~ air destroy
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ #uws:raze_valid_blocks run setblock ~ ~ ~ air destroy

execute positioned ~1 ~ ~1 if block ~ ~ ~ #uws:raze_valid_blocks run setblock ~ ~ ~ air destroy
execute positioned ~1 ~ ~ if block ~ ~ ~ #uws:raze_valid_blocks run setblock ~ ~ ~ air destroy
execute positioned ~1 ~ ~-1 if block ~ ~ ~ #uws:raze_valid_blocks run setblock ~ ~ ~ air destroy
execute positioned ~ ~ ~1 if block ~ ~ ~ #uws:raze_valid_blocks run setblock ~ ~ ~ air destroy
execute positioned ~ ~ ~-1 if block ~ ~ ~ #uws:raze_valid_blocks run setblock ~ ~ ~ air destroy
execute positioned ~-1 ~ ~1 if block ~ ~ ~ #uws:raze_valid_blocks run setblock ~ ~ ~ air destroy
execute positioned ~-1 ~ ~ if block ~ ~ ~ #uws:raze_valid_blocks run setblock ~ ~ ~ air destroy
execute positioned ~-1 ~ ~-1 if block ~ ~ ~ #uws:raze_valid_blocks run setblock ~ ~ ~ air destroy

execute positioned ~1 ~-1 ~1 if block ~ ~ ~ #uws:raze_valid_blocks run setblock ~ ~ ~ air destroy
execute positioned ~1 ~-1 ~ if block ~ ~ ~ #uws:raze_valid_blocks run setblock ~ ~ ~ air destroy
execute positioned ~1 ~-1 ~-1 if block ~ ~ ~ #uws:raze_valid_blocks run setblock ~ ~ ~ air destroy
execute positioned ~ ~-1 ~1 if block ~ ~ ~ #uws:raze_valid_blocks run setblock ~ ~ ~ air destroy
execute positioned ~ ~-1 ~ if block ~ ~ ~ #uws:raze_valid_blocks run setblock ~ ~ ~ air destroy
execute positioned ~ ~-1 ~-1 if block ~ ~ ~ #uws:raze_valid_blocks run setblock ~ ~ ~ air destroy
execute positioned ~-1 ~-1 ~1 if block ~ ~ ~ #uws:raze_valid_blocks run setblock ~ ~ ~ air destroy
execute positioned ~-1 ~-1 ~ if block ~ ~ ~ #uws:raze_valid_blocks run setblock ~ ~ ~ air destroy
execute positioned ~-1 ~-1 ~-1 if block ~ ~ ~ #uws:raze_valid_blocks run setblock ~ ~ ~ air destroy

execute unless data storage uws:temp item_data.particles[0] run function uws:effects/raze/ambient/particle/fallback
execute if data storage uws:temp item_data.particles[0] run function uws:effects/raze/ambient/particle/custom/loop_particles

execute store result score #temp uws.state run function uws:effects/raze/ambient/sound/custom with storage uws:temp item_data
execute if score #temp uws.state matches 0 run function uws:effects/raze/ambient/sound/fallback

scoreboard players set #temp_cooldown_grant uws.state 1