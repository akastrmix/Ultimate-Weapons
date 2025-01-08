$execute unless function uws:effects/homing/get_velocity/handle unless score @s uws.state matches $(tracking_speed_limit).. store result entity @s weapon.components.minecraft:custom_data.uws_effects.homing.velocity int 1 run scoreboard players add @s uws.state $(tracking_acceleration)

return 1