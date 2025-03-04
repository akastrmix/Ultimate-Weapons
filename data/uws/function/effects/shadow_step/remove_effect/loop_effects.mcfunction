function uws:effects/shadow_step/remove_effect/clear_effect with storage uws:temp entity_data.effects[0]

data remove storage uws:temp entity_data.effects[0]
execute if data storage uws:temp entity_data.effects[0] run function uws:effects/shadow_step/remove_effect/loop_effects