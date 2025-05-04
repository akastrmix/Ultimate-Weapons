execute store result score @s uws.edging_time run scoreboard players add #temp_gametime uws.state 1
scoreboard players set #temp_cooldown uws.state 1

execute if score #temp_kill_count uws.state matches 100..249 store result storage uws:temp item_data.current_tier int 1 run scoreboard players set #temp_current_tier uws.state 1
execute if score #temp_kill_count uws.state matches 250..499 store result storage uws:temp item_data.current_tier int 1 run scoreboard players set #temp_current_tier uws.state 2
execute if score #temp_kill_count uws.state matches 500..999 store result storage uws:temp item_data.current_tier int 1 run scoreboard players set #temp_current_tier uws.state 3
execute if score #temp_kill_count uws.state matches 1000..2499 store result storage uws:temp item_data.current_tier int 1 run scoreboard players set #temp_current_tier uws.state 4
execute if score #temp_kill_count uws.state matches 2500.. store result storage uws:temp item_data.current_tier int 1 run scoreboard players set #temp_current_tier uws.state 5

execute if score #temp_current_tier uws.state matches 0 run item modify entity @s weapon.mainhand {"function":"minecraft:set_enchantments","enchantments":{"minecraft:sharpness":5}}
execute if score #temp_current_tier uws.state matches 1 run item modify entity @s weapon.mainhand {"function":"minecraft:set_enchantments","enchantments":{"minecraft:sharpness":6}}
execute if score #temp_current_tier uws.state matches 2 run item modify entity @s weapon.mainhand {"function":"minecraft:set_enchantments","enchantments":{"minecraft:sharpness":7}}
execute if score #temp_current_tier uws.state matches 3 run item modify entity @s weapon.mainhand {"function":"minecraft:set_enchantments","enchantments":{"minecraft:sharpness":8}}
execute if score #temp_current_tier uws.state matches 4 run item modify entity @s weapon.mainhand {"function":"minecraft:set_enchantments","enchantments":{"minecraft:sharpness":9}}
execute if score #temp_current_tier uws.state matches 5 run item modify entity @s weapon.mainhand {"function":"minecraft:set_enchantments","enchantments":{"minecraft:sharpness":10}}

data modify storage uws:temp item_data merge value {tier0_level:5,tier1_level:6,tier1_requirement:100,tier2_level:7,tier2_requirement:250,tier3_level:8,tier3_requirement:500,tier4_level:9,tier4_requirement:1000,tier5_level:10,tier5_requirement:2500}