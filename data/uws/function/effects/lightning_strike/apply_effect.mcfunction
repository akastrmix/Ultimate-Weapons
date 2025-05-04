execute store result score #temp uws.state run function uws:effects/lightning_strike/effect/custom with storage uws:temp item_data
execute if score #temp uws.state matches 0 run function uws:effects/lightning_strike/effect/fallback

summon minecraft:lightning_bolt
execute unless data storage uws:temp {item_data:{lightning_immunity:0b}} run item replace entity @a[gamemode=!creative,gamemode=!spectator,distance=..10] saddle with minecraft:saddle[enchantments={"uws:lightning_immunity":1}]