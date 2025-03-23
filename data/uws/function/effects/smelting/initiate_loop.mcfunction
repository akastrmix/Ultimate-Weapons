function uws:libraries/internal/lang/score/validate
execute if predicate uws:is_lang_mismatch/mainhand run function uws:libraries/internal/lang/update_item/mainhand with entity @s SelectedItem.components.minecraft:custom_data.uws_item

scoreboard players reset #uws_general uws.smelting_time
execute if data storage uws:settings banned_effects[{name:smelting}] run scoreboard players set #uws_general uws.smelting_time 1
execute if data storage uws:settings banned_effects[{name:smelting}] run return run function uws:libraries/effect/terminate

execute store result score #temp_gametime uws.state run time query gametime
execute unless score @s uws.smelting_loop_time = #temp_gametime uws.state run function uws:effects/smelting/reset_mined
execute unless score @s uws.smelting_loop_time = #temp_gametime uws.state run function uws:libraries/schedule/handle_input {with:{command:"function uws:effects/smelting/loop",time:1}}