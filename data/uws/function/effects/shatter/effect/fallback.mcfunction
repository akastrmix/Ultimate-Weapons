execute store result score @s uws.shatter_time run scoreboard players add #temp_gametime uws.state 20
scoreboard players set #temp_item_damage uws.state -100

setblock ~ ~ ~ air destroy
particle minecraft:gust_emitter_small
playsound minecraft:entity.generic.explode master @a