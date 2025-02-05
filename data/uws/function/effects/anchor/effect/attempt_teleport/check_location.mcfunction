$execute in $(dimension) run forceload add $(x) $(z)
$execute in $(teleporter_dimension) run forceload add $(teleporter_x) $(teleporter_z)
$execute in $(dimension) unless loaded $(x) $(y) $(z) run return run function uws:libraries/schedule/handle_input {with:{command:"function uws:effects/anchor/effect/attempt_teleport/check_location with storage uws:profile players[{UUID:$(UUID)}].effects.anchor",time:1}}

$execute in $(dimension) run forceload remove $(x) $(z)
$execute in $(teleporter_dimension) run forceload remove $(teleporter_x) $(teleporter_z)

$data remove storage uws:profile players[{UUID:$(UUID)}].effects.anchor.has_placed
$data remove storage uws:profile players[{UUID:$(UUID)}].effects.anchor.awaits_loading

$execute in $(dimension) positioned $(x) $(y) $(z) unless block ~ ~ ~ #uws:anchor_applicable{components:{"minecraft:custom_data":{uws_effects:{anchor:{owner_id:$(id)}}}}} run return run execute as @a[scores={uws.anchor_id=$(id)},tag=!uws.ignore_voidbox_hints,limit=1] run function uws:libraries/internal/text/no_second_voidbox_to_link
$execute in $(dimension) positioned $(x) $(y) $(z) unless entity @e[type=minecraft:interaction,tag=uws.anchor,scores={uws.anchor_id=$(id)},limit=1,distance=..1] run return run execute as @a[scores={uws.anchor_id=$(id)},tag=!uws.ignore_voidbox_hints,limit=1] run function uws:libraries/internal/text/no_second_voidbox_to_link

data remove storage uws:temp block_data
$execute in $(dimension) run data modify storage uws:temp block_data set from block $(x) $(y) $(z) components.minecraft:custom_data.uws_effects.anchor

$execute in $(dimension) positioned $(x) $(y) $(z) rotated $(x_rotation) $(y_rotation) as @a[scores={uws.anchor_id=$(id)},limit=1] run function uws:effects/anchor/effect/attempt_teleport/teleport
$execute in $(teleporter_dimension) run setblock $(teleporter_x) $(teleporter_y) $(teleporter_z) minecraft:air