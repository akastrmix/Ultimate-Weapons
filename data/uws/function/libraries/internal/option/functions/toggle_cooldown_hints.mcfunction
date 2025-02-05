execute unless entity @s[tag=uws.ignore_cooldown_hints] run function uws:libraries/internal/text/cooldown_hints_disabled
execute unless entity @s[tag=uws.ignore_cooldown_hints] run return run tag @s add uws.ignore_cooldown_hints

execute if entity @s[tag=uws.ignore_cooldown_hints] run function uws:libraries/internal/text/cooldown_hints_enabled
execute if entity @s[tag=uws.ignore_cooldown_hints] run return run tag @s remove uws.ignore_cooldown_hints