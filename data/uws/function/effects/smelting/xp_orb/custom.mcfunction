$scoreboard players set #temp_value uws.state $(xp_multiplier)
execute if score #temp_value uws.state matches ..-1 run return 1

$execute if items entity @s contents minecraft:iron_ingot if predicate {"condition":"minecraft:random_chance","chance":0.7} run summon minecraft:experience_orb ~ ~ ~ {Value:$(xp_multiplier)s,Health:5s}
$execute if items entity @s contents minecraft:gold_ingot run summon minecraft:experience_orb ~ ~ ~ {Value:$(xp_multiplier)s,Health:5s}
$execute if items entity @s contents minecraft:copper_ingot if predicate {"condition":"minecraft:random_chance","chance":0.7} run summon minecraft:experience_orb ~ ~ ~ {Value:$(xp_multiplier)s,Health:5s}
$execute if items entity @s contents minecraft:netherite_scrap run summon minecraft:experience_orb ~ ~ ~ {Value:$(xp_multiplier)s,Health:5s}
$execute if items entity @s contents minecraft:netherite_scrap run summon minecraft:experience_orb ~ ~ ~ {Value:$(xp_multiplier)s,Health:5s}

return 1