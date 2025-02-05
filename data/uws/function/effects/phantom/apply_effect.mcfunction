advancement revoke @s only uws:effects/phantom

function uws:libraries/internal/lang/score/validate
execute if predicate uws:is_lang_mismatch/mainhand run function uws:libraries/internal/lang/update_item/mainhand with entity @s SelectedItem.components.minecraft:custom_data.uws_item

execute if data storage uws:settings banned_effects[{name:phantom}] run return run function uws:libraries/effect/terminate

execute store result score #temp_gametime uws.state run time query gametime
execute if score #temp_gametime uws.state < @s uws.phantom_time run return run execute unless entity @s[tag=uws.ignore_cooldown_hints] run function uws:libraries/effect/display_cooldown {effect:phantom,equipment:weapon}

data remove storage uws:temp item_data
execute if items entity @s weapon.mainhand *[custom_data~{uws_effects:{phantom:{}}},consumable] run data modify storage uws:temp item_data set from entity @s SelectedItem.components.minecraft:custom_data.uws_effects.phantom
execute unless items entity @s weapon.mainhand *[custom_data~{uws_effects:{phantom:{}}},consumable] run data modify storage uws:temp item_data set from entity @s Inventory[{Slot:-106b}].components.minecraft:custom_data.uws_effects.phantom

execute unless data storage uws:temp item_data.effects[0] run function uws:effects/phantom/effect/fallback
execute if data storage uws:temp item_data.effects[0] run function uws:effects/phantom/effect/custom/loop_effects

execute store result score #temp uws.state run function uws:effects/phantom/cooldown/custom with storage uws:temp item_data
execute if score #temp uws.state matches 0 run function uws:effects/phantom/cooldown/fallback