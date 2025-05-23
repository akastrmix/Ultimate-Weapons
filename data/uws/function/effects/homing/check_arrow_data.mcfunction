execute on origin run function uws:libraries/internal/lang/score/validate
execute on origin if predicate uws:is_lang_mismatch/mainhand run function uws:libraries/internal/lang/update_item/mainhand with entity @s SelectedItem.components.minecraft:custom_data.uws_item
execute on origin if predicate uws:is_lang_mismatch/offhand run function uws:libraries/internal/lang/update_item/offhand with entity @s equipment.offhand.components.minecraft:custom_data.uws_item

execute if data storage uws:settings banned_effects[{name:homing}] on origin run return run function uws:libraries/effect/terminate

data remove storage uws:temp entity_data
data modify storage uws:temp entity_data set from entity @s weapon.components.minecraft:custom_data.uws_effects.homing

execute if function uws:effects/homing/check_owner_cooldown run tag @s add uws.ineffective

execute unless data storage uws:temp {entity_data:{disable_crit:0b}} run data modify entity @s crit set value 0b

execute store result score #temp uws.state run function uws:effects/homing/apply_chance/custom with storage uws:temp entity_data
execute if score #temp uws.state matches 0 run function uws:effects/homing/apply_chance/fallback

execute store result score #temp uws.state run function uws:effects/homing/loop/general/custom with storage uws:temp entity_data
execute if score #temp uws.state matches 0 run function uws:effects/homing/loop/general/fallback