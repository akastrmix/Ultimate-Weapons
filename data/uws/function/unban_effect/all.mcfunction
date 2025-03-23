data modify storage uws:settings banned_effects set value []
scoreboard players reset #uws_general uws.smelting_time
scoreboard players reset #uws_general uws.replenish_time
scoreboard players reset #uws_general uws.raze_time

execute store result score #temp_gametime uws.state run time query gametime
execute as @a if items entity @s weapon.mainhand *[enchantments~[{enchantments:"uws:smelting"}]] unless score @s uws.smelting_loop_time = #temp_gametime uws.state run function uws:effects/smelting/reset_mined
execute as @a if items entity @s weapon.mainhand *[enchantments~[{enchantments:"uws:smelting"}]] unless score @s uws.smelting_loop_time = #temp_gametime uws.state run function uws:effects/smelting/loop

execute store result score #temp_gametime uws.state run time query gametime
execute as @a if items entity @s weapon.mainhand *[enchantments~[{enchantments:"uws:raze"}]] unless score @s uws.raze_loop_time = #temp_gametime uws.state run function uws:effects/raze/reset_mined
execute as @a if items entity @s weapon.mainhand *[enchantments~[{enchantments:"uws:raze"}]] unless score @s uws.raze_loop_time = #temp_gametime uws.state run function uws:effects/raze/loop

function uws:libraries/internal/lang/score/validate
function uws:libraries/internal/text/unbanned_all_effects