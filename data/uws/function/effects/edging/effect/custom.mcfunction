$execute store result score @s uws.edging_time run scoreboard players add #temp_gametime uws.state $(use_cooldown)

$execute if score #temp_kill_count uws.state matches $(tier1_requirement).. store result storage uws:temp item_data.current_tier int 1 run scoreboard players set #temp_current_tier uws.state 1
$execute if score #temp_kill_count uws.state matches $(tier2_requirement).. store result storage uws:temp item_data.current_tier int 1 run scoreboard players set #temp_current_tier uws.state 2
$execute if score #temp_kill_count uws.state matches $(tier3_requirement).. store result storage uws:temp item_data.current_tier int 1 run scoreboard players set #temp_current_tier uws.state 3
$execute if score #temp_kill_count uws.state matches $(tier4_requirement).. store result storage uws:temp item_data.current_tier int 1 run scoreboard players set #temp_current_tier uws.state 4
$execute if score #temp_kill_count uws.state matches $(tier5_requirement).. store result storage uws:temp item_data.current_tier int 1 run scoreboard players set #temp_current_tier uws.state 5

$execute if score #temp_current_tier uws.state matches 0 run item modify entity @s weapon.mainhand {"function":"minecraft:set_enchantments","enchantments":{"minecraft:sharpness":$(tier0_level)}}
$execute if score #temp_current_tier uws.state matches 1 run item modify entity @s weapon.mainhand {"function":"minecraft:set_enchantments","enchantments":{"minecraft:sharpness":$(tier1_level)}}
$execute if score #temp_current_tier uws.state matches 2 run item modify entity @s weapon.mainhand {"function":"minecraft:set_enchantments","enchantments":{"minecraft:sharpness":$(tier2_level)}}
$execute if score #temp_current_tier uws.state matches 3 run item modify entity @s weapon.mainhand {"function":"minecraft:set_enchantments","enchantments":{"minecraft:sharpness":$(tier3_level)}}
$execute if score #temp_current_tier uws.state matches 4 run item modify entity @s weapon.mainhand {"function":"minecraft:set_enchantments","enchantments":{"minecraft:sharpness":$(tier4_level)}}
$execute if score #temp_current_tier uws.state matches 5 run item modify entity @s weapon.mainhand {"function":"minecraft:set_enchantments","enchantments":{"minecraft:sharpness":$(tier5_level)}}

$data modify storage uws:temp item_data merge value {tier0_level:$(tier0_level),tier1_level:$(tier1_level),tier1_requirement:$(tier1_requirement),tier2_level:$(tier2_level),tier2_requirement:$(tier2_requirement),tier3_level:$(tier3_level),tier3_requirement:$(tier3_requirement),tier4_level:$(tier4_level),tier4_requirement:$(tier4_requirement),tier5_level:$(tier5_level),tier5_requirement:$(tier5_requirement)}

return 1