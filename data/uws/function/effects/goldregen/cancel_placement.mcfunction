execute if data block ~ ~ ~ {components:{"minecraft:consumable":{consume_seconds:0f}}} run function uws:effects/goldregen/apply_effect
execute unless data block ~ ~ ~ {components:{"minecraft:consumable":{consume_seconds:0f}}} if entity @s[gamemode=!creative,gamemode=!spectator] run function uws:effects/goldregen/cancel_consumption

setblock ~ ~ ~ minecraft:air