execute store result score #temp_gametime uws.state run time query gametime
execute if score #temp_gametime uws.state < #temp_cooldown uws.state run item modify entity @s contents {"function":"minecraft:set_components","components":{"!minecraft:custom_data":{}}}
execute if score #temp_gametime uws.state < #temp_cooldown uws.state run return fail

return run scoreboard players set #temp uws.state 1