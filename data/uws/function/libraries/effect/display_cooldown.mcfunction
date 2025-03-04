$scoreboard players operation #temp_cooldown uws.state = @s uws.$(effect)_time
scoreboard players operation #temp_cooldown uws.state -= #temp_gametime uws.state

scoreboard players add #temp_cooldown uws.state 1
execute store result storage uws:temp number.cooldown float 0.1 run scoreboard players operation #temp_cooldown uws.state /= #2 uws.state
data modify storage uws:temp number.cooldown set string storage uws:temp number.cooldown 0 -1

$function uws:libraries/internal/text/$(equipment)_on_cooldown_for_seconds