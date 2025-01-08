data modify storage uws:settings default_language set value zh_cn
scoreboard players set #uws_general uws.lang 2

execute as @a run function uws:libraries/internal/lang/score/validate
execute as @a run function uws:libraries/internal/lang/update_item/equipment
execute as @a run function uws:libraries/internal/text/default_lang_set_to_chinese