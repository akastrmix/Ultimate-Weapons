data remove storage uws:temp player
data remove storage uws:temp block_data
data modify storage uws:temp block_data set from block ~ ~ ~

execute unless score @s uws.anchor_id = @s uws.anchor_id store result score @s uws.anchor_id run scoreboard players add #uws_general uws.anchor_id 1
execute store result storage uws:temp player.id int 1 run scoreboard players operation #temp_anchor_id uws.state = @s uws.anchor_id

data modify storage uws:temp player.x set from storage uws:temp block_data.x
data modify storage uws:temp player.y set from storage uws:temp block_data.y
data modify storage uws:temp player.z set from storage uws:temp block_data.z

data modify storage uws:temp player.x_rotation set from storage uws:temp entity_data.Rotation[0]
data modify storage uws:temp player.y_rotation set from storage uws:temp entity_data.Rotation[1]
data modify storage uws:temp player.dimension set from storage uws:temp entity_data.Dimension

data modify storage uws:temp player.UUID set from storage uws:temp entity_data.UUID
data modify storage uws:temp player.has_placed set value {}

data modify block ~ ~ ~ components.minecraft:custom_data.uws_block.ignore_checks set value {}
data modify block ~ ~ ~ components.minecraft:custom_data.uws_effects.anchor.owner_id set from storage uws:temp player.id
execute positioned ~ ~-0.501 ~ summon minecraft:interaction run function uws:effects/anchor/effect/set_anchor/setup_interaction

$data modify storage uws:profile players[{UUID:$(UUID)}].effects.anchor merge from storage uws:temp player

execute unless entity @s[tag=uws.ignore_voidbox_hints] run function uws:libraries/internal/text/placed_and_linked_voidbox
execute store result score #temp uws.state run function uws:effects/anchor/ambient/sound/mark_location/custom with storage uws:temp block_data.components.minecraft:custom_data.uws_effects.anchor
execute if score #temp uws.state matches 0 run function uws:effects/anchor/ambient/sound/mark_location/fallback