give @s minecraft:command_block[item_name='{"text":"World Breaker Template"}',block_entity_data={id:"minecraft:command_block",Command:"execute as @p run loot give @s loot {\"pools\":[{\"rolls\":1,\"entries\":[{\"type\":\"minecraft:item\",\"name\":\"minecraft:diamond_pickaxe\",\"functions\":[{\"function\":\"minecraft:set_components\",\"components\":{\"minecraft:custom_data\":\"{uws_item:{type:world_breaker},uws_effects:{shatter:{mode:destroy,item_damage_multiplier:100,particle_id:\\\"minecraft:gust_emitter_small\\\",particle_spread:0,particle_speed:0,particle_count:1,sound_event:\\\"minecraft:entity.generic.explode\\\",sound_pitch:1,use_cooldown:20}}}\",\"minecraft:enchantments\":{\"levels\":{\"uws:shatter\":1}},\"minecraft:attribute_modifiers\":{\"modifiers\":[{\"type\":\"minecraft:attack_damage\",\"id\":\"minecraft:base_attack_damage\",\"amount\":4,\"operation\":\"add_value\",\"slot\":\"mainhand\"},{\"type\":\"minecraft:attack_speed\",\"id\":\"minecraft:base_attack_speed\",\"amount\":16,\"operation\":\"add_value\",\"slot\":\"mainhand\"}]},\"minecraft:item_name\":\"{\\\"text\\\":\\\"World Breaker\\\",\\\"color\\\":\\\"green\\\"}\",\"minecraft:lore\":[\"{\\\"text\\\":\\\"\\\"}\"]}},{\"function\":\"minecraft:reference\",\"name\":\"uws:item/world_breaker/update_lang\"}]}]}]}"}]
give @s minecraft:command_block[item_name='{"text":"World Breaker Modifier"}',block_entity_data={id:"minecraft:command_block",Command:"item modify entity @p weapon.mainhand [{\"function\":\"minecraft:set_custom_data\",\"tag\":\"{uws_effects:{shatter:{mode:destroy,item_damage_multiplier:100,particle_id:\\\"minecraft:gust_emitter_small\\\",particle_spread:0,particle_speed:0,particle_count:1,sound_event:\\\"minecraft:entity.generic.explode\\\",sound_pitch:1,use_cooldown:20}}}\"},{\"function\":\"minecraft:set_enchantments\",\"enchantments\":{\"uws:shatter\":1}}]"}]