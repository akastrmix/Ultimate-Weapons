execute store result score #temp_gametime uws.state run time query gametime
scoreboard players operation #temp_cooldown uws.state = @s uws.anchor_id
scoreboard players operation #temp_cooldown uws.state -= #temp_gametime uws.state
execute if score #temp_cooldown uws.state matches 21..