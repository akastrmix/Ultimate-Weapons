execute unless entity @s[tag=uws.use_chat_hints] run function uws:libraries/internal/text/chat_hints_selected
execute unless entity @s[tag=uws.use_chat_hints] run return run tag @s add uws.use_chat_hints

execute if entity @s[tag=uws.use_chat_hints] run function uws:libraries/internal/text/actionbar_hints_selected
execute if entity @s[tag=uws.use_chat_hints] run return run tag @s remove uws.use_chat_hints