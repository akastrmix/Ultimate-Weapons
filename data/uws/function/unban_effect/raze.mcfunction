function uws:libraries/internal/lang/score/validate
execute unless data storage uws:settings banned_effects[{name:raze}] run return run function uws:libraries/internal/text/effect_not_banned

data remove storage uws:settings banned_effects[{name:raze}]
scoreboard players reset #uws_general uws.raze_time

execute store result score #temp_gametime uws.state run time query gametime
execute as @a if items entity @s weapon.mainhand *[enchantments~[{enchantments:"uws:raze"}]] unless score @s uws.raze_loop_time = #temp_gametime uws.state run function uws:effects/raze/reset_mined
execute as @a if items entity @s weapon.mainhand *[enchantments~[{enchantments:"uws:raze"}]] unless score @s uws.raze_loop_time = #temp_gametime uws.state run function uws:effects/raze/loop

data modify storage uws:lang temp."text.effect" set value {"text":"Raze"}
function uws:libraries/internal/text/unbanned_effect