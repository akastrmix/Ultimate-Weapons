execute if score #uws_general uws.smelting_time matches 1 run return fail

execute store result score @s uws.smelting_loop_time run time query gametime
execute if predicate uws:effects/smelting/is_target_block_mined run function uws:effects/smelting/apply_effect
execute if items entity @s weapon.mainhand *[enchantments~[{enchantments:"uws:smelting"}]] run function uws:libraries/schedule/handle_input {with:{command:"function uws:effects/smelting/loop",time:1}}