tag @s add uws.omitted
execute on origin run tag @s add uws.omitted
execute if entity @e[type=!#uws:homing_ignored,tag=!uws.omitted,distance=..6] run function uws:effects/homing/loop/update_tracking/fallback
execute on origin run tag @s remove uws.omitted
tag @s remove uws.omitted