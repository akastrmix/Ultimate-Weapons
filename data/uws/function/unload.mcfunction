execute as @a run function uws:libraries/internal/lang/score/validate
execute as @a run function uws:libraries/internal/text/datapack_unloaded

data remove storage uws:settings constant
data remove storage uws:settings default_language
data remove storage uws:settings banned_effects
data remove storage uws:lang temp
data remove storage uws:lang en_us
data remove storage uws:lang zh_cn
data remove storage uws:lang ct_hk
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
scoreboard objectives remove uws.shadow_step_time
scoreboard objectives remove uws.shadow_step_active_time
scoreboard objectives remove uws.replenish_time
scoreboard objectives remove uws.raze_time
scoreboard objectives remove uws.raze_loop_time

scoreboard objectives remove uws.smelting.mined_iron
scoreboard objectives remove uws.smelting.mined_deepslate_iron
scoreboard objectives remove uws.smelting.mined_gold
scoreboard objectives remove uws.smelting.mined_deepslate_gold
scoreboard objectives remove uws.smelting.mined_copper
scoreboard objectives remove uws.smelting.mined_deepslate_copper
scoreboard objectives remove uws.smelting.mined_ancient_debris

scoreboard objectives remove uws.replenish.mined_beetroots
scoreboard objectives remove uws.replenish.mined_carrots
scoreboard objectives remove uws.replenish.mined_nether_wart
scoreboard objectives remove uws.replenish.mined_potatoes
scoreboard objectives remove uws.replenish.mined_wheat

scoreboard objectives remove uws.raze.mined_andesite
scoreboard objectives remove uws.raze.mined_basalt
scoreboard objectives remove uws.raze.mined_blackstone
scoreboard objectives remove uws.raze.mined_calcite
scoreboard objectives remove uws.raze.mined_clay
scoreboard objectives remove uws.raze.mined_coarse_dirt
scoreboard objectives remove uws.raze.mined_crimson_nylium
scoreboard objectives remove uws.raze.mined_deepslate
scoreboard objectives remove uws.raze.mined_diorite
scoreboard objectives remove uws.raze.mined_dirt
scoreboard objectives remove uws.raze.mined_dirt_path
scoreboard objectives remove uws.raze.mined_end_stone
scoreboard objectives remove uws.raze.mined_granite
scoreboard objectives remove uws.raze.mined_grass_block
scoreboard objectives remove uws.raze.mined_gravel
scoreboard objectives remove uws.raze.mined_ice
scoreboard objectives remove uws.raze.mined_magma_block
scoreboard objectives remove uws.raze.mined_moss_block
scoreboard objectives remove uws.raze.mined_mud
scoreboard objectives remove uws.raze.mined_mycelium
scoreboard objectives remove uws.raze.mined_netherrack
scoreboard objectives remove uws.raze.mined_obsidian
scoreboard objectives remove uws.raze.mined_pale_moss_block
scoreboard objectives remove uws.raze.mined_podzol
scoreboard objectives remove uws.raze.mined_red_sand
scoreboard objectives remove uws.raze.mined_rooted_dirt
scoreboard objectives remove uws.raze.mined_sand
scoreboard objectives remove uws.raze.mined_snow_block
scoreboard objectives remove uws.raze.mined_soul_sand
scoreboard objectives remove uws.raze.mined_soul_soil
scoreboard objectives remove uws.raze.mined_stone
scoreboard objectives remove uws.raze.mined_tuff
scoreboard objectives remove uws.raze.mined_warped_nylium

schedule clear uws:libraries/internal/loop/main

kill 100000-0-0-0-0

execute in minecraft:overworld run forceload remove -100000 100000