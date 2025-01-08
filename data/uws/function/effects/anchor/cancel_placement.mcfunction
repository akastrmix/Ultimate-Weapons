setblock ~ ~ ~ minecraft:air

execute if entity @s[gamemode=!creative,gamemode=!spectator] if items entity @s weapon.mainhand *[custom_data~{uws_effects:{anchor:{}}}] run function uws:libraries/item/preserve_item/mainhand
execute if entity @s[gamemode=!creative,gamemode=!spectator] unless items entity @s weapon.mainhand *[custom_data~{uws_effects:{anchor:{}}}] run function uws:libraries/item/preserve_item/offhand