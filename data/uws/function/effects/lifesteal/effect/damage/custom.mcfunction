execute store success score #temp2 uws.state run attribute @s minecraft:max_health modifier value get uws:limit
execute if score #temp2 uws.state matches 1 store result storage uws:temp item_data.damage float 0.1 run attribute @s minecraft:max_health get 100000
execute if score #temp2 uws.state matches 0 store result storage uws:temp item_data.damage float 0.1 run data get entity @s Health 100000

$execute store result storage uws:temp item_data.damage float 0.000001 run data get storage uws:temp item_data.damage $(damage_percentage)
function uws:effects/lifesteal/effect/deal_damage with storage uws:temp item_data
$particle $(particle_id) ~ ~0.45 ~ $(particle_spread) $(particle_spread) $(particle_spread) $(particle_speed) $(particle_count) force
$playsound $(sound_event) player @a ~ ~ ~ 1 $(sound_pitch)

return 1