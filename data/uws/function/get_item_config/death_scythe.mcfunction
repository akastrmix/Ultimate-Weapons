give @s minecraft:command_block[item_name='{"text":"Death\'s Scythe Template"}',block_entity_data={id:"minecraft:command_block",Command:"execute as @p run loot give @s loot {\"pools\":[{\"rolls\":1,\"entries\":[{\"type\":\"minecraft:item\",\"name\":\"minecraft:iron_hoe\",\"functions\":[{\"function\":\"minecraft:set_components\",\"components\":{\"minecraft:custom_data\":\"{uws_item:{type:death_scythe},uws_effects:{lifesteal:{damage_percentage:25,healing_percentage:25,item_damage_multiplier:50,particle_id:\\\"minecraft:block{block_state:\\\\\\\"minecraft:redstone_block\\\\\\\"}\\\",particle_spread:0.125,particle_speed:0,particle_count:50,sound_event:\\\"minecraft:entity.item.break\\\",sound_pitch:0.8,use_cooldown:0}}}\",\"minecraft:enchantments\":{\"levels\":{\"uws:lifesteal\":1}},\"minecraft:attribute_modifiers\":{\"modifiers\":[{\"type\":\"minecraft:attack_damage\",\"id\":\"minecraft:base_attack_damage\",\"amount\":0,\"operation\":\"add_value\",\"slot\":\"mainhand\"},{\"type\":\"minecraft:attack_speed\",\"id\":\"minecraft:base_attack_speed\",\"amount\":16,\"operation\":\"add_value\",\"slot\":\"mainhand\"}]},\"minecraft:item_name\":\"{\\\"text\\\":\\\"Death's Scythe\\\",\\\"color\\\":\\\"light_purple\\\"}\",\"minecraft:lore\":[\"{\\\"text\\\":\\\"\\\"}\"]}},{\"function\":\"minecraft:reference\",\"name\":\"uws:item/death_scythe/update_lang\"}]}]}]}"}]
give @s minecraft:command_block[item_name='{"text":"Death\'s Scythe Modifier"}',block_entity_data={id:"minecraft:command_block",Command:"item modify entity @p weapon.mainhand [{\"function\":\"minecraft:set_custom_data\",\"tag\":\"{uws_effects:{lifesteal:{damage_percentage:25,healing_percentage:25,item_damage_multiplier:50,particle_id:\\\"minecraft:block{block_state:\\\\\\\"minecraft:redstone_block\\\\\\\"}\\\",particle_spread:0.125,particle_speed:0,particle_count:50,sound_event:\\\"minecraft:entity.item.break\\\",sound_pitch:0.8,use_cooldown:0}}}\"},{\"function\":\"minecraft:set_enchantments\",\"enchantments\":{\"uws:lifesteal\":1}}]"}]