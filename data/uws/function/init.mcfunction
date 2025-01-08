data modify storage uws:settings constant.health set value 100000
data modify storage uws:settings constant.item_damage set value 1

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

function uws:libraries/internal/lang/initialize/en_us
function uws:libraries/internal/lang/initialize/zh_cn
function uws:libraries/internal/lang/score/get_default

gamerule maxCommandChainLength 2147483647

forceload add -100000 100000
execute unless entity 100000-0-0-0-0 run summon minecraft:item_display -100000 0 100000 {UUID:[I;1048576,0,0,0],view_range:0f,Tags:["uws.persistent"]}