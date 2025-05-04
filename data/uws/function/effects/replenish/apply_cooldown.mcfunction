execute store result score #temp uws.state run function uws:effects/replenish/cooldown/custom with storage uws:temp item_data
execute if score #temp uws.state matches 0 run function uws:effects/replenish/cooldown/fallback

execute unless entity @s[tag=!uws.use_actionbar_ready_notifications,tag=!uws.use_chat_ready_notifications] run function uws:libraries/effect/attempt_ready_notification {effect:Replenish}

item modify entity @s weapon.mainhand {"function":"minecraft:set_damage","damage":{"type":"minecraft:score","target":{"type":"minecraft:fixed","name":"#temp_item_damage"},"score":"uws.state","scale":0.0001},"add":true}
execute if items entity @s weapon.mainhand *[damage~{durability:{max:0}}] run function uws:libraries/item/break_item with entity @s SelectedItem