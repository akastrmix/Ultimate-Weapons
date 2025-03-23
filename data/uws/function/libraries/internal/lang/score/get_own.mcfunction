scoreboard players set @s uws.lang 0
function uws:libraries/internal/lang/preferred/get with entity @s
execute if data storage uws:temp {player:{preferred_language:en_us}} run return run scoreboard players set @s uws.lang 1
execute if data storage uws:temp {player:{preferred_language:zh_cn}} run return run scoreboard players set @s uws.lang 2
execute if data storage uws:temp {player:{preferred_language:ct_hk}} run return run scoreboard players set @s uws.lang 3