function uws:libraries/internal/lang/score/validate
execute if predicate uws:is_lang_mismatch/mainhand run function uws:libraries/internal/lang/update_item/mainhand with entity @s SelectedItem.components.minecraft:custom_data.uws_item

scoreboard players reset #uws_general uws.replenish_time
execute if data storage uws:settings banned_effects[{name:replenish}] run scoreboard players set #uws_general uws.replenish_time 1
execute if data storage uws:settings banned_effects[{name:replenish}] run return run function uws:libraries/effect/terminate

function uws:effects/replenish/reset_mined
function uws:libraries/schedule/handle_input {with:{command:"execute unless score #uws_general uws.replenish_time matches 1 if predicate uws:effects/replenish/is_target_block_mined run function uws:effects/replenish/apply_effect",time:1}}