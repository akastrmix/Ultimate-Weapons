execute unless data storage uws:settings {default_language:en_us} unless data storage uws:settings {default_language:zh_cn} run data modify storage uws:settings default_language set value en_us
execute if data storage uws:settings {default_language:en_us} run return run scoreboard players set #uws_general uws.lang 1
execute if data storage uws:settings {default_language:zh_cn} run return run scoreboard players set #uws_general uws.lang 2