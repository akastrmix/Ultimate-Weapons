function uws:effects/goldregen/effect/custom/give_effect with storage uws:temp item_data.effects[0]

data remove storage uws:temp item_data.effects[0]
execute if data storage uws:temp item_data.effects[0] run function uws:effects/goldregen/effect/custom/loop_effects