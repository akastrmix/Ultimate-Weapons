$scoreboard players set #temp_kill_count uws.state $(kill_count)
execute store result storage uws:temp item_data.kill_count int 1 run scoreboard players add #temp_kill_count uws.state 1

return 1