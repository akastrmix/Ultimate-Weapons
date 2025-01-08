data remove block ~ ~ ~ components.minecraft:custom_data.uws_effects
data remove storage uws:temp block_data

data modify storage uws:temp block_data.teleporter_x set from block ~ ~ ~ x
data modify storage uws:temp block_data.teleporter_y set from block ~ ~ ~ y
data modify storage uws:temp block_data.teleporter_z set from block ~ ~ ~ z
data modify storage uws:temp block_data.teleporter_dimension set from entity @s Dimension

$data modify storage uws:profile players[{UUID:$(UUID)}].effects.anchor merge from storage uws:temp block_data
$data modify storage uws:profile players[{UUID:$(UUID)}].effects.anchor.awaits_loading set value {}

$execute as 100000-0-0-0-0 run function uws:effects/anchor/effect/attempt_teleport/check_location with storage uws:profile players[{UUID:$(UUID)}].effects.anchor