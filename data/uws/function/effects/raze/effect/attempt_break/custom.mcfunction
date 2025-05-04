$execute at @e[type=minecraft:marker,tag=uws.temp,distance=..10] if block ~ ~ ~ $(valid_blocks) run setblock ~ ~ ~ air $(mode)

return 1