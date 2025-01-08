execute store success score #temp2 uws.state run attribute @s minecraft:max_health modifier value get uws:limit
execute if score #temp2 uws.state matches 1 store result storage uws:temp item_data.damage float 0.000001 run attribute @s minecraft:max_health get 250000
execute if score #temp2 uws.state matches 0 store result storage uws:temp item_data.damage float 0.000001 run data get entity @s Health 250000

function uws:effects/lifesteal/effect/deal_damage with storage uws:temp item_data
particle minecraft:block{block_state:"minecraft:redstone_block"} ~ ~0.45 ~ 0.125 0.125 0.125 0 50 force
playsound minecraft:entity.item.break player @a ~ ~ ~ 1 0.8