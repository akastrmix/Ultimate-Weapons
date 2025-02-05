execute unless entity @s[tag=uws.ignore_scythe_hints] run function uws:libraries/internal/text/scythe_hints_disabled
execute unless entity @s[tag=uws.ignore_scythe_hints] run return run tag @s add uws.ignore_scythe_hints

execute if entity @s[tag=uws.ignore_scythe_hints] run function uws:libraries/internal/text/scythe_hints_enabled
execute if entity @s[tag=uws.ignore_scythe_hints] run return run tag @s remove uws.ignore_scythe_hints