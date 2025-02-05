advancement revoke @s only uws:effects/edging

execute if items entity @s weapon.mainhand minecraft:netherite_sword[custom_data~{uws_item:{type:bloodlust}}] run item modify entity @s weapon.mainhand {"function":"minecraft:set_attributes","modifiers":[{"attribute":"minecraft:attack_damage","id":"minecraft:base_attack_damage","amount":7,"operation":"add_value","slot":"mainhand"},{"attribute":"minecraft:attack_speed","id":"minecraft:base_attack_speed","amount":16,"operation":"add_value","slot":"mainhand"}]}

function uws:libraries/internal/lang/score/validate
execute if predicate uws:is_lang_mismatch/mainhand run function uws:libraries/internal/lang/update_item/mainhand with entity @s SelectedItem.components.minecraft:custom_data.uws_item

execute if data storage uws:settings banned_effects[{name:edging}] run return run function uws:libraries/effect/terminate

execute store result score #temp_gametime uws.state run time query gametime
execute if score #temp_gametime uws.state < @s uws.edging_time run return run execute unless entity @s[tag=uws.ignore_cooldown_hints] run function uws:libraries/effect/display_cooldown {effect:edging,equipment:weapon}

execute store result score #temp uws.state run function uws:effects/edging/update_kill_count with entity @s SelectedItem.components.minecraft:custom_data.uws_effects.edging
execute if score #temp uws.state matches 0 run function uws:effects/edging/set_kill_count

execute store result storage uws:temp item_data.current_tier int 1 run scoreboard players set #temp_current_tier uws.state 0
execute store result score #temp uws.state run function uws:effects/edging/effect/custom with entity @s SelectedItem.components.minecraft:custom_data.uws_effects.edging
execute if score #temp uws.state matches 0 run function uws:effects/edging/effect/fallback

execute if score #temp_current_tier uws.state matches 0..4 run scoreboard players add #temp_current_tier uws.state 1
execute store result storage uws:temp item_data.next_tier int 1 run scoreboard players get #temp_current_tier uws.state

function uws:effects/edging/update_lore with storage uws:temp item_data