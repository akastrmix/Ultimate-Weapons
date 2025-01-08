# anchor
execute if block ~ ~ ~ #uws:anchor_applicable{components:{"minecraft:custom_data":{uws_effects:{anchor:{}}}}} run return run function uws:effects/anchor/start

# goldregen
execute if block ~ ~ ~ #uws:goldregen_applicable{components:{"minecraft:custom_data":{uws_effects:{goldregen:{}}},"minecraft:consumable":{}}} run return run function uws:effects/goldregen/cancel_placement