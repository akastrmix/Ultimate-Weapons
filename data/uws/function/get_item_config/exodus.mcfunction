give @s minecraft:command_block[item_name='{"text":"Exodus Template"}',block_entity_data={id:"minecraft:command_block",Command:"execute as @p run loot give @s loot {\"pools\":[{\"rolls\":1,\"entries\":[{\"type\":\"minecraft:item\",\"name\":\"minecraft:diamond_helmet\",\"functions\":[{\"function\":\"minecraft:set_components\",\"components\":{\"minecraft:custom_data\":\"{uws_item:{type:exodus},uws_effects:{eternity:{effects:[{id:regeneration,duration:3,amplifier:1,hide_particles:\\\"false\\\"}],use_cooldown:40}}}\",\"minecraft:item_name\":\"{\\\"text\\\":\\\"Exodus\\\",\\\"color\\\":\\\"gold\\\"}\",\"minecraft:lore\":[\"{\\\"text\\\":\\\"\\\"}\"]}},{\"function\":\"minecraft:reference\",\"name\":\"uws:item/exodus/update_lang\"}]}]}]}"}]
give @s minecraft:command_block[item_name='{"text":"Exodus Modifier"}',block_entity_data={id:"minecraft:command_block",Command:"item modify entity @p weapon.mainhand {\"function\":\"minecraft:set_custom_data\",\"tag\":\"{uws_effects:{eternity:{effects:[{id:regeneration,duration:3,amplifier:1,hide_particles:\\\"false\\\"}],use_cooldown:40}}}\"}"}]