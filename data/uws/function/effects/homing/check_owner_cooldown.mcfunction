execute store result score #temp_gametime uws.state run time query gametime
execute on origin if score #temp_gametime uws.state < @s uws.homing_time if function uws:libraries/effect/is_weapon_hints_enabled run function uws:libraries/effect/display_cooldown {effect:homing,equipment:weapon}
execute on origin if score #temp_gametime uws.state < @s uws.homing_time run return 1

execute store result score #temp uws.state run function uws:effects/homing/cooldown/custom with storage uws:temp entity_data
execute if score #temp uws.state matches 0 run function uws:effects/homing/cooldown/fallback

execute on origin unless entity @s[tag=!uws.use_actionbar_ready_notifications,tag=!uws.use_chat_ready_notifications] run function uws:libraries/effect/attempt_ready_notification {effect:Homing}