function uws:libraries/internal/lang/score/validate
execute if predicate uws:is_lang_mismatch/mainhand run function uws:libraries/internal/lang/update_item/mainhand with entity @s SelectedItem.components.minecraft:custom_data.uws_item

execute if data storage uws:settings banned_effects[{name:lifesteal}] run return run function uws:libraries/effect/terminate

execute store result score #temp_gametime uws.state run time query gametime
execute if score #temp_gametime uws.state < @s uws.lifesteal_time run return run execute unless entity @s[tag=uws.ignore_cooldown_hints] run function uws:libraries/effect/display_cooldown {effect:lifesteal,equipment:weapon}

data remove storage uws:temp item_data
data modify storage uws:temp item_data set from entity @s SelectedItem.components.minecraft:custom_data.uws_effects.lifesteal

scoreboard players set @s uws.state 1