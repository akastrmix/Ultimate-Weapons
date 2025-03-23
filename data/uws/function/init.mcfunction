data modify storage uws:settings constant.health set value 100000
data modify storage uws:settings constant.item_damage set value 1

scoreboard objectives add uws_options trigger
scoreboard objectives add uws.leave_game minecraft.custom:minecraft.leave_game
scoreboard objectives add uws.state dummy
scoreboard objectives add uws.lang dummy
scoreboard objectives add uws.schedule_id dummy
scoreboard objectives add uws.anchor_id dummy
scoreboard objectives add uws.hint_time dummy
scoreboard objectives add uws.explosion_time dummy
scoreboard objectives add uws.lightning_strike_time dummy
scoreboard objectives add uws.eternity_time dummy
scoreboard objectives add uws.resilience_time dummy
scoreboard objectives add uws.lifesteal_time dummy
scoreboard objectives add uws.edging_time dummy
scoreboard objectives add uws.shatter_time dummy
scoreboard objectives add uws.homing_time dummy
scoreboard objectives add uws.anchor_time dummy
scoreboard objectives add uws.goldregen_time dummy
scoreboard objectives add uws.smelting_time dummy
scoreboard objectives add uws.smelting_loop_time dummy
scoreboard objectives add uws.shadow_step_time dummy
scoreboard objectives add uws.shadow_step_active_time dummy
scoreboard objectives add uws.replenish_time dummy
scoreboard objectives add uws.raze_time dummy
scoreboard objectives add uws.raze_loop_time dummy

scoreboard objectives add uws.smelting.mined_iron minecraft.mined:minecraft.iron_ore
scoreboard objectives add uws.smelting.mined_deepslate_iron minecraft.mined:minecraft.deepslate_iron_ore
scoreboard objectives add uws.smelting.mined_gold minecraft.mined:minecraft.gold_ore
scoreboard objectives add uws.smelting.mined_deepslate_gold minecraft.mined:minecraft.deepslate_gold_ore
scoreboard objectives add uws.smelting.mined_copper minecraft.mined:minecraft.copper_ore
scoreboard objectives add uws.smelting.mined_deepslate_copper minecraft.mined:minecraft.deepslate_copper_ore
scoreboard objectives add uws.smelting.mined_ancient_debris minecraft.mined:minecraft.ancient_debris

scoreboard objectives add uws.replenish.mined_beetroots minecraft.mined:minecraft.beetroots
scoreboard objectives add uws.replenish.mined_carrots minecraft.mined:minecraft.carrots
scoreboard objectives add uws.replenish.mined_nether_wart minecraft.mined:minecraft.nether_wart
scoreboard objectives add uws.replenish.mined_potatoes minecraft.mined:minecraft.potatoes
scoreboard objectives add uws.replenish.mined_wheat minecraft.mined:minecraft.wheat

scoreboard objectives add uws.raze.mined_andesite minecraft.mined:minecraft.andesite
scoreboard objectives add uws.raze.mined_basalt minecraft.mined:minecraft.basalt
scoreboard objectives add uws.raze.mined_blackstone minecraft.mined:minecraft.blackstone
scoreboard objectives add uws.raze.mined_calcite minecraft.mined:minecraft.calcite
scoreboard objectives add uws.raze.mined_clay minecraft.mined:minecraft.clay
scoreboard objectives add uws.raze.mined_coarse_dirt minecraft.mined:minecraft.coarse_dirt
scoreboard objectives add uws.raze.mined_crimson_nylium minecraft.mined:minecraft.crimson_nylium
scoreboard objectives add uws.raze.mined_deepslate minecraft.mined:minecraft.deepslate
scoreboard objectives add uws.raze.mined_diorite minecraft.mined:minecraft.diorite
scoreboard objectives add uws.raze.mined_dirt minecraft.mined:minecraft.dirt
scoreboard objectives add uws.raze.mined_dirt_path minecraft.mined:minecraft.dirt_path
scoreboard objectives add uws.raze.mined_end_stone minecraft.mined:minecraft.end_stone
scoreboard objectives add uws.raze.mined_granite minecraft.mined:minecraft.granite
scoreboard objectives add uws.raze.mined_grass_block minecraft.mined:minecraft.grass_block
scoreboard objectives add uws.raze.mined_gravel minecraft.mined:minecraft.gravel
scoreboard objectives add uws.raze.mined_ice minecraft.mined:minecraft.ice
scoreboard objectives add uws.raze.mined_magma_block minecraft.mined:minecraft.magma_block
scoreboard objectives add uws.raze.mined_moss_block minecraft.mined:minecraft.moss_block
scoreboard objectives add uws.raze.mined_mud minecraft.mined:minecraft.mud
scoreboard objectives add uws.raze.mined_mycelium minecraft.mined:minecraft.mycelium
scoreboard objectives add uws.raze.mined_netherrack minecraft.mined:minecraft.netherrack
scoreboard objectives add uws.raze.mined_obsidian minecraft.mined:minecraft.obsidian
scoreboard objectives add uws.raze.mined_pale_moss_block minecraft.mined:minecraft.pale_moss_block
scoreboard objectives add uws.raze.mined_podzol minecraft.mined:minecraft.podzol
scoreboard objectives add uws.raze.mined_red_sand minecraft.mined:minecraft.red_sand
scoreboard objectives add uws.raze.mined_rooted_dirt minecraft.mined:minecraft.rooted_dirt
scoreboard objectives add uws.raze.mined_sand minecraft.mined:minecraft.sand
scoreboard objectives add uws.raze.mined_snow_block minecraft.mined:minecraft.snow_block
scoreboard objectives add uws.raze.mined_soul_sand minecraft.mined:minecraft.soul_sand
scoreboard objectives add uws.raze.mined_soul_soil minecraft.mined:minecraft.soul_soil
scoreboard objectives add uws.raze.mined_stone minecraft.mined:minecraft.stone
scoreboard objectives add uws.raze.mined_tuff minecraft.mined:minecraft.tuff
scoreboard objectives add uws.raze.mined_warped_nylium minecraft.mined:minecraft.warped_nylium

scoreboard players set #2 uws.state 2

function uws:libraries/internal/lang/initialize/en_us
function uws:libraries/internal/lang/initialize/zh_cn
function uws:libraries/internal/lang/initialize/ct_hk
function uws:libraries/internal/lang/score/get_default
function uws:libraries/internal/loop/main

gamerule maxCommandChainLength 2147483647

execute in minecraft:overworld run forceload add -100000 100000
execute unless entity 100000-0-0-0-0 in minecraft:overworld run summon minecraft:item_display -100000 0 100000 {UUID:[I;1048576,0,0,0],view_range:0f,Tags:["uws.persistent"]}