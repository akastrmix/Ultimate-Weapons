execute store result score #temp uws.state run function uws:effects/anchor/break_block/check_held_item/custom with block ~ ~ ~ components.minecraft:custom_data.uws_effects.anchor
execute if score #temp uws.state matches 0 store result score #temp uws.state run function uws:effects/anchor/break_block/check_held_item/fallback
execute unless score #temp uws.state matches 2 run return fail

execute store result storage uws:temp entity_data.anchor_id int 1 run scoreboard players get @s uws.anchor_id

return 1