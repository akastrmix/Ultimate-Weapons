$execute unless predicate {"condition":"minecraft:random_chance","chance":$(effective_probability)} run tag @s add uws.ineffective
$scoreboard players set @s uws.hint_time $(effective_time)