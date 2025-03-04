scoreboard players set @s uws.state 0

execute store result score #temp_gametime uws.state run time query gametime
scoreboard players operation #temp_gametime uws.state -= @s uws.hint_time
execute if score #temp_gametime uws.state matches 0..1 run return run execute store result score @s uws.hint_time run time query gametime

execute store result score @s uws.hint_time run time query gametime
function uws:libraries/internal/text/effect_banned