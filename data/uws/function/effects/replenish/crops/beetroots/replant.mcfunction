kill @s

execute if score #temp_cooldown_status uws.state matches 1 run return fail
execute if score #temp_has_beetroots uws.state matches 0 run return fail
execute unless block ~ ~-1 ~ minecraft:farmland run return fail
execute unless block ~ ~ ~ minecraft:air run return fail

setblock ~ ~ ~ minecraft:beetroots
execute unless data storage uws:temp {item_data:{replant_protection:0b}} align xyz positioned ~0.5 ~-0.001 ~0.5 summon minecraft:interaction run function uws:effects/replenish/setup_replant_cover

execute store result score #temp uws.state run function uws:effects/replenish/ambient/custom with storage uws:temp item_data
execute if score #temp uws.state matches 0 run function uws:effects/replenish/ambient/fallback

scoreboard players set #temp_clear_beetroots uws.state 1
scoreboard players set #temp_cooldown_grant uws.state 1