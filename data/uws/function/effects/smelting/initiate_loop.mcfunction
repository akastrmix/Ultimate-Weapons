execute unless block ~ ~ ~ #uws:smelting_valid_blocks run return fail

function uws:libraries/internal/lang/score/validate
execute if predicate uws:is_lang_mismatch/mainhand run function uws:libraries/internal/lang/update_item/mainhand with entity @s SelectedItem.components.minecraft:custom_data.uws_item

scoreboard players reset #uws_general uws.smelting_time
execute if data storage uws:settings banned_effects[{name:smelting}] run scoreboard players set #uws_general uws.smelting_time 1
execute if data storage uws:settings banned_effects[{name:smelting}] run return run function uws:libraries/effect/terminate

function uws:effects/smelting/reset_mined
execute store result score #temp_gametime uws.state run time query gametime
execute unless score #temp_gametime uws.state = @s uws.smelting_loop_time run function uws:libraries/schedule/handle_input {with:{command:"function uws:effects/smelting/loop",time:1}}