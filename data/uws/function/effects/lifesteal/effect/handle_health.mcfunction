# ------------------------------------------------------------------------------------------------------------
# Copyright (c) 2024 Gunivers
#
# This file is part of the Bookshelf project (https://github.com/Gunivers/Bookshelf).
#
# This source code is subject to the terms of the Mozilla Public License, v. 2.0.
# If a copy of the MPL was not distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/.
#
# Conditions:
# - You may use this file in compliance with the MPL v2.0
# - Any modifications must be documented and disclosed under the same license
#
# For more details, refer to the MPL v2.0.
#
# This code has been modified and merged for use in Ultimate Weapons Datapack.
# ------------------------------------------------------------------------------------------------------------

$execute store result score #temp_input uws.state run data get storage uws:settings constant.health $(healing_amount)

execute store success score #temp2 uws.state run attribute @s minecraft:max_health modifier value get uws:limit
execute if score #temp2 uws.state matches 1 store result score #temp_current_health uws.state run attribute @s minecraft:max_health get 100000
execute if score #temp2 uws.state matches 0 store result score #temp_current_health uws.state run data get entity @s Health 100000
scoreboard players operation #temp_input uws.state += #temp_current_health uws.state

execute store result score #temp_max_health uws.state run attribute @s minecraft:max_health get 100000
execute store result score #temp_health_limit uws.state run attribute @s minecraft:max_health modifier value get uws:limit 100000
scoreboard players operation #temp_health_limit uws.state -= #temp_max_health uws.state
execute store result storage uws:temp item_data.health_limit double 0.00001 run scoreboard players operation #temp_health_limit uws.state += #temp_input uws.state

execute if score #temp_health_limit uws.state matches 1.. run data modify storage uws:temp item_data.health_limit set value 0
function uws:effects/lifesteal/effect/grant_health with storage uws:temp item_data