execute on origin run tag @s add uws.omitted
execute if entity @e[type=!#uws:homing_ignored,tag=!uws.omitted,distance=..6] run function uws:effects/homing/loop/update_velocity
execute on origin run tag @s remove uws.omitted