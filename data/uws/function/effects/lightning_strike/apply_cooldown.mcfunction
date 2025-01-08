execute if items entity @s weapon.mainhand minecraft:netherite_axe[custom_data~{uws_item:{type:axe_of_perun}}] run item modify entity @s weapon.mainhand {"function":"minecraft:set_attributes","modifiers":[{"attribute":"minecraft:attack_damage","id":"minecraft:base_attack_damage","amount":6,"operation":"add_value","slot":"mainhand"},{"attribute":"minecraft:attack_speed","id":"minecraft:base_attack_speed","amount":16,"operation":"add_value","slot":"mainhand"}]}

function uws:libraries/internal/lang/score/validate
execute if predicate uws:is_lang_mismatch/mainhand run function uws:libraries/internal/lang/update_item/mainhand with entity @s SelectedItem.components.minecraft:custom_data.uws_item

execute if data storage uws:settings banned_effects[{name:lightning_strike}] run return run function uws:libraries/effect/terminate

execute store result score #temp_gametime uws.state run time query gametime
execute if score #temp_gametime uws.state < @s uws.lightning_strike_time run return run scoreboard players set @s uws.state 0

data remove storage uws:temp item_data
data modify storage uws:temp item_data set from entity @s SelectedItem.components.minecraft:custom_data.uws_effects.lightning_strike

execute store result score #temp uws.state run function uws:effects/lightning_strike/cooldown/custom with storage uws:temp item_data
execute if score #temp uws.state matches 0 run function uws:effects/lightning_strike/cooldown/fallback

scoreboard players set @s uws.state 1