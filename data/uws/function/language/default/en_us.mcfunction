data modify storage uws:settings default_language set value en_us
scoreboard players set #uws_general uws.lang 1

execute as @a run function uws:libraries/internal/lang/score/validate
execute as @a run function uws:libraries/internal/lang/update_item/equipment
execute as @a run function uws:libraries/internal/text/default_lang_set_to_english