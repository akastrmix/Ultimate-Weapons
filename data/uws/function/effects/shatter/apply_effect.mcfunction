execute if items entity @s weapon.mainhand minecraft:netherite_pickaxe[custom_data~{uws_item:{type:world_breaker}}] run item modify entity @s weapon.mainhand {"function":"minecraft:set_attributes","modifiers":[{"attribute":"minecraft:attack_damage","id":"minecraft:base_attack_damage","amount":5,"operation":"add_value","slot":"mainhand"},{"attribute":"minecraft:attack_speed","id":"minecraft:base_attack_speed","amount":16,"operation":"add_value","slot":"mainhand"}]}

function uws:libraries/internal/lang/score/validate
execute if predicate uws:is_lang_mismatch/mainhand run function uws:libraries/internal/lang/update_item/mainhand with entity @s SelectedItem.components.minecraft:custom_data.uws_item

execute if data storage uws:settings banned_effects[{name:shatter}] run return run function uws:libraries/effect/terminate

execute store result score #temp_gametime uws.state run time query gametime
execute if score #temp_gametime uws.state < @s uws.shatter_time run return run execute unless entity @s[tag=uws.ignore_cooldown_hints] run function uws:libraries/effect/display_cooldown {effect:shatter,equipment:weapon}

execute unless block ~ ~ ~ #uws:shatter_valid_blocks run return fail

execute store result score #temp uws.state run function uws:effects/shatter/effect/custom with entity @s SelectedItem.components.minecraft:custom_data.uws_effects.shatter
execute if score #temp uws.state matches 0 run function uws:effects/shatter/effect/fallback

item modify entity @s weapon.mainhand {"function":"minecraft:set_damage","damage":{"type":"minecraft:score","target":{"type":"minecraft:fixed","name":"#temp_item_damage"},"score":"uws.state","scale":0.0001},"add":true}
execute if items entity @s weapon.mainhand *[damage~{durability:{max:0}}] run function uws:libraries/item/break_item with entity @s SelectedItem