execute store result score @s uws.shatter_time run scoreboard players add #temp_gametime uws.state 20
scoreboard players set #temp_cooldown uws.state 20
scoreboard players set #temp_item_damage uws.state -100

setblock ~ ~ ~ air destroy
particle minecraft:gust_emitter_small ~ ~ ~ 0 0 0 0 1 force
playsound minecraft:entity.generic.explode block @a