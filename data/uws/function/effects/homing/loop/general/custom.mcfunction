execute if score @s uws.hint_time matches 0 run return fail
scoreboard players remove @s uws.hint_time 1
execute if data entity @s {inGround:1b} run return fail

execute unless entity @s[tag=uws.ineffective] run tag @s add uws.omitted
execute unless entity @s[tag=uws.ineffective] on origin run tag @s add uws.omitted
$execute unless entity @s[tag=uws.ineffective] if entity @e[type=!$(ignored_entities),tag=!uws.omitted,distance=..$(tracking_radius)] run function uws:effects/homing/loop/update_tracking/custom with entity @s weapon.components.minecraft:custom_data.uws_effects.homing
execute unless entity @s[tag=uws.ineffective] on origin run tag @s remove uws.omitted
execute unless entity @s[tag=uws.ineffective] run tag @s remove uws.omitted

$particle $(particle_id) ~ ~ ~ $(particle_spread) $(particle_spread) $(particle_spread) $(particle_speed) $(particle_count) force
function uws:libraries/schedule/handle_input {with:{command:"function uws:effects/homing/loop/general/custom with entity @s weapon.components.minecraft:custom_data.uws_effects.homing",time:1}}

return 1