execute store result score #temp uws.state run function uws:effects/lifesteal/effect/healing/custom with storage uws:temp item_data
execute if score #temp uws.state matches 0 run function uws:effects/lifesteal/effect/healing/fallback

execute unless entity @s[tag=!uws.use_actionbar_ready_notifications,tag=!uws.use_chat_ready_notifications] run function uws:libraries/effect/attempt_ready_notification {effect:Lifesteal}

execute if entity @s[gamemode=!creative,gamemode=!spectator] run item modify entity @s weapon.mainhand {"function":"minecraft:set_damage","damage":{"type":"minecraft:score","target":{"type":"minecraft:fixed","name":"#temp_item_damage"},"score":"uws.state","scale":0.00000001},"add":true}
execute if items entity @s weapon.mainhand *[damage~{durability:{max:0}}] run function uws:libraries/item/break_item with entity @s SelectedItem

execute store result storage uws:temp item_data.damage float 0.01 run data get storage uws:temp item_data.damage 100
execute store result storage uws:temp item_data.healing_amount float 0.01 run data get storage uws:temp item_data.healing_amount 100

data modify storage uws:temp item_data.damage set string storage uws:temp item_data.damage 0 -1
data modify storage uws:temp item_data.healing_amount set string storage uws:temp item_data.healing_amount 0 -1

execute unless entity @s[tag=uws.ignore_scythe_hints] run function uws:libraries/internal/text/used_death_scythe