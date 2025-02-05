execute unless entity @s[tag=uws.ignore_voidbox_hints] run function uws:libraries/internal/text/voidbox_hints_disabled
execute unless entity @s[tag=uws.ignore_voidbox_hints] run return run tag @s add uws.ignore_voidbox_hints

execute if entity @s[tag=uws.ignore_voidbox_hints] run function uws:libraries/internal/text/voidbox_hints_enabled
execute if entity @s[tag=uws.ignore_voidbox_hints] run return run tag @s remove uws.ignore_voidbox_hints