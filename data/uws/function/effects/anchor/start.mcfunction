function uws:libraries/internal/lang/score/validate
execute if predicate uws:is_lang_mismatch/mainhand run function uws:libraries/internal/lang/update_item/mainhand with entity @s SelectedItem.components.minecraft:custom_data.uws_item
execute if predicate uws:is_lang_mismatch/offhand run function uws:libraries/internal/lang/update_item/offhand with entity @s Inventory[{Slot:-106b}].components.minecraft:custom_data.uws_item

execute if data storage uws:settings banned_effects[{name:anchor}] run function uws:effects/anchor/cancel_placement
execute if data storage uws:settings banned_effects[{name:anchor}] run return run function uws:libraries/effect/terminate

execute store result score #temp_gametime uws.state run time query gametime
execute if score #temp_gametime uws.state < @s uws.anchor_time run function uws:effects/anchor/cancel_placement
execute if score #temp_gametime uws.state < @s uws.anchor_time run return run execute unless entity @s[tag=uws.ignore_cooldown_hints] run function uws:libraries/effect/display_cooldown {effect:anchor,equipment:weapon}

data remove storage uws:temp entity_data
data modify storage uws:temp entity_data set from entity @s

function uws:effects/anchor/check_player_data with storage uws:temp entity_data