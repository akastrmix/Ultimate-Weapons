item modify entity @s contents {"function":"minecraft:set_components","components":{"!minecraft:custom_data":{}}}

execute if score #temp_cooldown_status uws.state matches 1 run return fail

item modify entity @s contents {"function":"minecraft:furnace_smelt"}
execute store result score #temp uws.state run function uws:effects/smelting/xp_orb/custom with storage uws:temp item_data
execute if score #temp uws.state matches 0 run function uws:effects/smelting/xp_orb/fallback

execute store result score #temp uws.state run function uws:effects/smelting/ambient/custom with storage uws:temp item_data
execute if score #temp uws.state matches 0 run function uws:effects/smelting/ambient/fallback

scoreboard players set #temp_cooldown_grant uws.state 1