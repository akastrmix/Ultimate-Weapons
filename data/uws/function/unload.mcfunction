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
data remove storage uws:temp schedule
data remove storage uws:temp item_data
data remove storage uws:temp entity_data
data remove storage uws:temp block_data

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

kill 100000-0-0-0-0
kill 100000-0-0-0-1

forceload remove -100000 100000