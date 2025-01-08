execute align xyz positioned ~0.5 ~0.5 ~0.5 run function uws:libraries/raycast/check/space

scoreboard players remove #temp_steps uws.state 1
execute if score #temp_steps uws.state matches 1.. positioned ^ ^ ^1 run function uws:libraries/raycast/recurse