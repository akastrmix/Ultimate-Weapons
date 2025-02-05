advancement revoke @s only uws:effects/eternity

function uws:libraries/internal/lang/score/validate
execute if predicate uws:is_lang_mismatch/head run function uws:libraries/internal/lang/update_item/head with entity @s Inventory[{Slot:103b}].components.minecraft:custom_data.uws_item

execute if data storage uws:settings banned_effects[{name:eternity}] run return run function uws:libraries/effect/terminate

execute store result score #temp_gametime uws.state run time query gametime
execute if score #temp_gametime uws.state < @s uws.eternity_time run return run execute unless entity @s[tag=uws.ignore_cooldown_hints] run function uws:libraries/effect/display_cooldown {effect:eternity,equipment:helmet}

data remove storage uws:temp item_data
data modify storage uws:temp item_data set from entity @s Inventory[{Slot:103b}].components.minecraft:custom_data.uws_effects.eternity

execute unless data storage uws:temp item_data.effects[0] run function uws:effects/eternity/effect/fallback
execute if data storage uws:temp item_data.effects[0] run function uws:effects/eternity/effect/custom/loop_effects

execute store result score #temp uws.state run function uws:effects/eternity/cooldown/custom with storage uws:temp item_data
execute if score #temp uws.state matches 0 run function uws:effects/eternity/cooldown/fallback