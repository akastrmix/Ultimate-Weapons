$execute unless function uws:effects/homing/get_velocity/handle unless score @s uws.state matches $(tracking_speed_limit).. run scoreboard players add @s uws.state $(tracking_acceleration)

return 1