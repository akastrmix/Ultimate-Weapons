$execute as @e[type=minecraft:item,nbt={Age:0s},distance=..$(distance)] if items entity @s contents minecraft:raw_gold[custom_data~{uws_item:{type:smelting_temp_gold}}] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function uws:effects/smelting/smelt_ore