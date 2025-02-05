execute unless entity @s[tag=uws.use_chat_hints] if predicate uws:is_lang_en_us run return run title @s actionbar [{"storage":"uws:lang","nbt":"en_us.\"text.helmet_on_cooldown\"","interpret":true,"color":"red"},{"storage":"uws:temp","nbt":"number.cooldown","color":"red"},{"storage":"uws:lang","nbt":"en_us.\"text.seconds\"","interpret":true,"color":"red"}]
execute unless entity @s[tag=uws.use_chat_hints] if predicate uws:is_lang_zh_cn run return run title @s actionbar [{"storage":"uws:lang","nbt":"zh_cn.\"text.helmet_on_cooldown\"","interpret":true,"color":"red"},{"storage":"uws:temp","nbt":"number.cooldown","color":"red"},{"storage":"uws:lang","nbt":"zh_cn.\"text.seconds\"","interpret":true,"color":"red"}]

execute if entity @s[tag=uws.use_chat_hints] if predicate uws:is_lang_en_us run return run tellraw @s [{"storage":"uws:lang","nbt":"en_us.\"text.helmet_on_cooldown\"","interpret":true,"color":"red"},{"storage":"uws:temp","nbt":"number.cooldown","color":"red"},{"storage":"uws:lang","nbt":"en_us.\"text.seconds\"","interpret":true,"color":"red"}]
execute if entity @s[tag=uws.use_chat_hints] if predicate uws:is_lang_zh_cn run return run tellraw @s [{"storage":"uws:lang","nbt":"zh_cn.\"text.helmet_on_cooldown\"","interpret":true,"color":"red"},{"storage":"uws:temp","nbt":"number.cooldown","color":"red"},{"storage":"uws:lang","nbt":"zh_cn.\"text.seconds\"","interpret":true,"color":"red"}]