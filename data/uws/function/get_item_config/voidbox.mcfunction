give @s minecraft:command_block[item_name='{"text":"Voidbox Template"}',block_entity_data={id:"minecraft:command_block",Command:"execute as @p run loot give @s loot {\"pools\":[{\"rolls\":1,\"entries\":[{\"type\":\"minecraft:item\",\"name\":\"minecraft:ender_chest\",\"functions\":[{\"function\":\"minecraft:set_components\",\"components\":{\"minecraft:custom_data\":\"{uws_item:{type:voidbox},uws_effects:{anchor:{particle_id:\\\"minecraft:large_smoke\\\",particle_spread:1,particle_speed:0,particle_count:5,sound_event_mark_location:\\\"minecraft:entity.ender_dragon.hurt\\\",sound_pitch_mark_location:0.5,sound_event_teleport:\\\"minecraft:entity.enderman.teleport\\\",sound_pitch_teleport:1,use_cooldown:0}}}\",\"minecraft:item_name\":\"{\\\"text\\\":\\\"Voidbox\\\",\\\"color\\\":\\\"gold\\\"}\",\"minecraft:lore\":[\"{\\\"text\\\":\\\"\\\"}\"]}},{\"function\":\"minecraft:reference\",\"name\":\"uws:item/voidbox/update_lang\"}]}]}]}"}]
give @s minecraft:command_block[item_name='{"text":"Voidbox Modifier"}',block_entity_data={id:"minecraft:command_block",Command:"item modify entity @p weapon.mainhand {\"function\":\"minecraft:set_custom_data\",\"tag\":\"{uws_effects:{anchor:{particle_id:\\\"minecraft:large_smoke\\\",particle_spread:1,particle_speed:0,particle_count:5,sound_event_mark_location:\\\"minecraft:entity.ender_dragon.hurt\\\",sound_pitch_mark_location:0.5,sound_event_teleport:\\\"minecraft:entity.enderman.teleport\\\",sound_pitch_teleport:1,use_cooldown:0}}}\"}"}]