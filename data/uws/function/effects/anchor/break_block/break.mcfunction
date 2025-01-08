data remove block ~ ~ ~ components.minecraft:custom_data.uws_block
data remove block ~ ~ ~ components.minecraft:custom_data.uws_effects.anchor.owner_id

function uws:libraries/block/drop_block with block ~ ~ ~

scoreboard players operation #temp_anchor_id uws.state = @s uws.anchor_id
execute on attacker if score @s uws.anchor_id = #temp_anchor_id uws.state run function uws:effects/anchor/break_block/reset_placement with entity @s