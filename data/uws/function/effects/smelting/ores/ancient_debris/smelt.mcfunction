item modify entity @s contents [{"function":"minecraft:set_item","item":"minecraft:netherite_scrap"},{"function":"minecraft:set_components","components":{"!minecraft:custom_data":{}}}]

execute store result score #temp2 uws.state run function uws:effects/smelting/ambient/custom with storage uws:temp item_data
execute if score #temp2 uws.state matches 0 run function uws:effects/smelting/ambient/fallback