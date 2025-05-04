advancement revoke @s only uws:effects/shadow_step/activate

function uws:libraries/internal/lang/score/validate
execute if predicate uws:is_lang_mismatch/mainhand run function uws:libraries/internal/lang/update_item/mainhand with entity @s SelectedItem.components.minecraft:custom_data.uws_item
execute if predicate uws:is_lang_mismatch/offhand run function uws:libraries/internal/lang/update_item/offhand with entity @s equipment.offhand.components.minecraft:custom_data.uws_item

execute if data storage uws:settings banned_effects[{name:shadow_step}] run return run function uws:libraries/effect/terminate

execute if score @s uws.shadow_step_active_time = @s uws.shadow_step_active_time run return fail

execute store result score #temp_gametime uws.state run time query gametime
execute if score #temp_gametime uws.state < @s uws.shadow_step_time run return run execute if function uws:libraries/effect/is_weapon_hints_enabled run function uws:libraries/effect/display_cooldown {effect:shadow_step,equipment:weapon}

data remove storage uws:temp item_data
data modify storage uws:temp item_data.UUID set from entity @s UUID
execute if items entity @s weapon.mainhand *[custom_data~{uws_effects:{shadow_step:{}}},consumable] run data modify storage uws:temp item_data merge from entity @s SelectedItem.components.minecraft:custom_data.uws_effects.shadow_step
execute unless items entity @s weapon.mainhand *[custom_data~{uws_effects:{shadow_step:{}}},consumable] run data modify storage uws:temp item_data merge from entity @s equipment.offhand.components.minecraft:custom_data.uws_effects.shadow_step

data remove storage uws:temp player
execute unless data storage uws:temp item_data.effects[0] run function uws:effects/shadow_step/effect/fallback
execute if data storage uws:temp item_data.effects[0] run function uws:effects/shadow_step/effect/custom/loop_effects

execute store result score #temp uws.state run function uws:effects/shadow_step/activate/custom with storage uws:temp item_data
execute if score #temp uws.state matches 0 run function uws:effects/shadow_step/activate/fallback with storage uws:temp item_data
function uws:libraries/schedule/handle_input {with:{command:"function uws:effects/shadow_step/update_active_time",time:1}}