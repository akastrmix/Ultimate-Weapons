scoreboard players set @s uws.state 0
execute if entity @s[tag=uws.use_actionbar_hints_for_armor,tag=!uws.use_chat_hints_for_armor] run return 1
execute if entity @s[tag=!uws.use_actionbar_hints_for_armor,tag=uws.use_chat_hints_for_armor] run return 1