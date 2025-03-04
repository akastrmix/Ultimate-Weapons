scoreboard players set #temp uws.state 0
execute if entity @s[tag=!uws.use_chat_hints_for_weapon,tag=!uws.disable_hints_for_weapon] run scoreboard players set #temp uws.state 1
execute if score #temp uws.state matches 1 run tag @s add uws.use_chat_hints_for_weapon
execute if score #temp uws.state matches 1 run return run function uws:libraries/internal/text/chat_hints_for_weapon_selected

execute if entity @s[tag=uws.use_chat_hints_for_weapon,tag=!uws.disable_hints_for_weapon] run scoreboard players set #temp uws.state 1
execute if score #temp uws.state matches 1 run tag @s remove uws.use_chat_hints_for_weapon
execute if score #temp uws.state matches 1 run tag @s add uws.disable_hints_for_weapon
execute if score #temp uws.state matches 1 run return run function uws:libraries/internal/text/cooldown_hints_for_weapon_disabled

execute if entity @s[tag=!uws.use_chat_hints_for_weapon,tag=uws.disable_hints_for_weapon] run scoreboard players set #temp uws.state 1
execute if score #temp uws.state matches 1 run tag @s remove uws.disable_hints_for_weapon
execute if score #temp uws.state matches 1 run return run function uws:libraries/internal/text/actionbar_hints_for_weapon_selected