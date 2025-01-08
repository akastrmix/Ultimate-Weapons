advancement revoke @s only uws:effects/goldregen

function uws:libraries/internal/lang/score/validate
execute if predicate uws:is_lang_mismatch/mainhand run function uws:libraries/internal/lang/update_item/mainhand with entity @s SelectedItem.components.minecraft:custom_data.uws_item
execute if predicate uws:is_lang_mismatch/offhand run function uws:libraries/internal/lang/update_item/offhand with entity @s Inventory[{Slot:-106b}].components.minecraft:custom_data.uws_item

execute if data storage uws:settings banned_effects[{name:goldregen}] if entity @s[gamemode=!creative,gamemode=!spectator] run function uws:effects/goldregen/cancel_consumption
execute if data storage uws:settings banned_effects[{name:goldregen}] run return run function uws:libraries/effect/terminate

execute store result score #temp_gametime uws.state run time query gametime
execute if score #temp_gametime uws.state < @s uws.goldregen_time if entity @s[gamemode=!creative,gamemode=!spectator] run function uws:effects/goldregen/cancel_consumption
execute if score #temp_gametime uws.state < @s uws.goldregen_time run return run execute unless entity @s[tag=ignore_ghead_hints] run function uws:libraries/internal/text/please_wait

data remove storage uws:temp item_data
execute if items entity @s weapon.mainhand *[custom_data~{uws_effects:{goldregen:{}}},consumable] run data modify storage uws:temp item_data set from entity @s SelectedItem.components.minecraft:custom_data.uws_effects.goldregen
execute unless items entity @s weapon.mainhand *[custom_data~{uws_effects:{goldregen:{}}},consumable] run data modify storage uws:temp item_data set from entity @s Inventory[{Slot:-106b}].components.minecraft:custom_data.uws_effects.goldregen

execute unless data storage uws:temp item_data.effects[0] run function uws:effects/goldregen/effect/fallback
execute if data storage uws:temp item_data.effects[0] run function uws:effects/goldregen/effect/custom/loop_effects

execute store result score #temp uws.state run function uws:effects/goldregen/cooldown/custom with storage uws:temp item_data
execute if score #temp uws.state matches 0 run function uws:effects/goldregen/cooldown/fallback

execute unless entity @s[tag=ignore_ghead_hints] run function uws:libraries/internal/text/ate_golden_head