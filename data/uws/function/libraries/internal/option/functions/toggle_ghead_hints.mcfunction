execute unless entity @s[tag=uws.ignore_ghead_hints] run function uws:libraries/internal/text/ghead_hints_disabled
execute unless entity @s[tag=uws.ignore_ghead_hints] run return run tag @s add uws.ignore_ghead_hints

execute if entity @s[tag=uws.ignore_ghead_hints] run function uws:libraries/internal/text/ghead_hints_enabled
execute if entity @s[tag=uws.ignore_ghead_hints] run return run tag @s remove uws.ignore_ghead_hints