execute if score #uws_general uws.raze_time matches 1 run return fail

execute store result score @s uws.smelting_loop_time run time query gametime
execute if predicate uws:effects/raze/is_target_block_mined run function uws:effects/raze/apply_effect
execute if items entity @s weapon.mainhand *[enchantments~[{enchantments:"uws:raze"}]] run function uws:libraries/schedule/handle_input {with:{command:"function uws:effects/raze/loop",time:1}}