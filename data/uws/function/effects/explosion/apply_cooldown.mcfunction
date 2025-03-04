execute if items entity @s weapon.mainhand minecraft:netherite_sword[custom_data~{uws_item:{type:excalibur}}] run item modify entity @s weapon.mainhand {"function":"minecraft:set_attributes","modifiers":[{"attribute":"minecraft:attack_damage","id":"minecraft:base_attack_damage","amount":7,"operation":"add_value","slot":"mainhand"},{"attribute":"minecraft:attack_speed","id":"minecraft:base_attack_speed","amount":16,"operation":"add_value","slot":"mainhand"}]}

function uws:libraries/internal/lang/score/validate
execute if predicate uws:is_lang_mismatch/mainhand run function uws:libraries/internal/lang/update_item/mainhand with entity @s SelectedItem.components.minecraft:custom_data.uws_item

execute if data storage uws:settings banned_effects[{name:explosion}] run return run function uws:libraries/effect/terminate

execute store result score #temp_gametime uws.state run time query gametime
execute if score #temp_gametime uws.state < @s uws.explosion_time run return run execute if function uws:libraries/effect/is_weapon_hints_enabled run function uws:libraries/effect/display_cooldown {effect:explosion,equipment:weapon}

data remove storage uws:temp item_data
data modify storage uws:temp item_data set from entity @s SelectedItem.components.minecraft:custom_data.uws_effects.explosion

execute store result score #temp uws.state run function uws:effects/explosion/cooldown/custom with storage uws:temp item_data
execute if score #temp uws.state matches 0 run function uws:effects/explosion/cooldown/fallback

scoreboard players set @s uws.state 1