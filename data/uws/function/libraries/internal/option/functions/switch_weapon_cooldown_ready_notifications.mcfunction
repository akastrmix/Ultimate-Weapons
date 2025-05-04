scoreboard players set #temp uws.state 0
execute if entity @s[tag=!uws.use_actionbar_ready_notifications,tag=!uws.use_chat_ready_notifications] run scoreboard players set #temp uws.state 1
execute if score #temp uws.state matches 1 run tag @s add uws.use_actionbar_ready_notifications
execute if score #temp uws.state matches 1 run return run function uws:libraries/internal/text/actionbar_notifications_selected

execute if entity @s[tag=uws.use_actionbar_ready_notifications,tag=!uws.use_chat_ready_notifications] run scoreboard players set #temp uws.state 1
execute if score #temp uws.state matches 1 run tag @s remove uws.use_actionbar_ready_notifications
execute if score #temp uws.state matches 1 run tag @s add uws.use_chat_ready_notifications
execute if score #temp uws.state matches 1 run return run function uws:libraries/internal/text/chat_notifications_selected

execute if entity @s[tag=!uws.use_actionbar_ready_notifications,tag=uws.use_chat_ready_notifications] run scoreboard players set #temp uws.state 1
execute if score #temp uws.state matches 1 run tag @s remove uws.use_chat_ready_notifications
execute if score #temp uws.state matches 1 run return run function uws:libraries/internal/text/ready_notifications_disabled