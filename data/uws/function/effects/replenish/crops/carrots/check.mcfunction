$execute as @e[type=minecraft:item,nbt={Age:0s},distance=..$(distance)] if items entity @s contents minecraft:stick[custom_data~{uws_item:{type:replenish_temp_carrots}}] at @s run function uws:effects/replenish/crops/carrots/replant