execute if items entity @s weapon.mainhand minecraft:netherite_pickaxe[custom_data~{uws_item:{type:war_pick}}] run item modify entity @s weapon.mainhand {"function":"minecraft:set_attributes","modifiers":[{"attribute":"minecraft:attack_damage","id":"minecraft:base_attack_damage","amount":5,"operation":"add_value","slot":"mainhand"},{"attribute":"minecraft:attack_speed","id":"minecraft:base_attack_speed","amount":16,"operation":"add_value","slot":"mainhand"}]}

function uws:libraries/internal/lang/score/validate
execute if predicate uws:is_lang_mismatch/mainhand run function uws:libraries/internal/lang/update_item/mainhand with entity @s SelectedItem.components.minecraft:custom_data.uws_item

scoreboard players reset #uws_general uws.raze_time
execute if data storage uws:settings banned_effects[{name:raze}] run scoreboard players set #uws_general uws.raze_time 1
execute if data storage uws:settings banned_effects[{name:raze}] run return run function uws:libraries/effect/terminate

execute store result score #temp_gametime uws.state run time query gametime
execute unless score @s uws.raze_loop_time = #temp_gametime uws.state run function uws:effects/raze/reset_mined
execute unless score @s uws.raze_loop_time = #temp_gametime uws.state run function uws:libraries/schedule/handle_input {with:{command:"function uws:effects/raze/loop",time:1}}