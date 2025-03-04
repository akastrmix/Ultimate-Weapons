execute store result score #temp uws.state run function uws:effects/anchor/ambient/particle/custom with storage uws:temp block_data
execute if score #temp uws.state matches 0 run function uws:effects/anchor/ambient/particle/fallback

tp @s ~ ~ ~ ~ ~

execute unless entity @s[tag=uws.ignore_voidbox_hints] run function uws:libraries/internal/text/teleported_to_original_voidbox
execute store result score #temp uws.state run function uws:effects/anchor/ambient/sound/teleport/custom with storage uws:temp block_data
execute if score #temp uws.state matches 0 run function uws:effects/anchor/ambient/sound/teleport/fallback

execute store result score #temp_gametime uws.state run time query gametime
execute store result score #temp uws.state run function uws:effects/anchor/cooldown/custom with storage uws:temp block_data
execute if score #temp uws.state matches 0 run function uws:effects/anchor/cooldown/fallback
# execute if entity @s[tag=!uws.use_actionbar_ready_notifications,tag=!uws.use_chat_ready_notifications] run function uws:libraries/effect/attempt_ready_notification

setblock ~ ~ ~ minecraft:air destroy
kill @e[type=minecraft:item,nbt={Age:0s},distance=..1]

scoreboard players operation #temp_anchor_id uws.state = @s uws.anchor_id
execute as @e[type=minecraft:interaction,tag=uws.anchor,distance=..1] if score @s uws.anchor_id = #temp_anchor_id uws.state run kill @s