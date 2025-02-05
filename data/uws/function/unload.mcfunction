execute as @a run function uws:libraries/internal/lang/score/validate
execute as @a run function uws:libraries/internal/text/datapack_unloaded

data remove storage uws:settings constant
data remove storage uws:settings default_language
data remove storage uws:settings banned_effects
data remove storage uws:lang temp
data remove storage uws:lang en_us
data remove storage uws:lang zh_cn
data remove storage uws:temp player
data remove storage uws:temp effect
data remove storage uws:temp number
data remove storage uws:temp schedule
data remove storage uws:temp item_data
data remove storage uws:temp entity_data
data remove storage uws:temp block_data

scoreboard objectives remove uws_options
scoreboard objectives remove uws.leave_game
scoreboard objectives remove uws.state
scoreboard objectives remove uws.lang
scoreboard objectives remove uws.schedule_id
scoreboard objectives remove uws.anchor_id
scoreboard objectives remove uws.hint_time
scoreboard objectives remove uws.explosion_time
scoreboard objectives remove uws.lightning_strike_time
scoreboard objectives remove uws.eternity_time
scoreboard objectives remove uws.resilience_time
scoreboard objectives remove uws.lifesteal_time
scoreboard objectives remove uws.edging_time
scoreboard objectives remove uws.shatter_time
scoreboard objectives remove uws.homing_time
scoreboard objectives remove uws.anchor_time
scoreboard objectives remove uws.goldregen_time
scoreboard objectives remove uws.smelting_time
scoreboard objectives remove uws.smelting_loop_time
scoreboard objectives remove uws.phantom_time
scoreboard objectives remove uws.smelting.mined_iron
scoreboard objectives remove uws.smelting.mined_deepslate_iron
scoreboard objectives remove uws.smelting.mined_gold
scoreboard objectives remove uws.smelting.mined_deepslate_gold
scoreboard objectives remove uws.smelting.mined_copper
scoreboard objectives remove uws.smelting.mined_deepslate_copper
scoreboard objectives remove uws.smelting.mined_ancient_debris

schedule clear uws:libraries/internal/option/loop

kill 100000-0-0-0-0

forceload remove -100000 100000