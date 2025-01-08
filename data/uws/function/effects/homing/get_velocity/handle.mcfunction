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

execute store result score #temp_gametime uws.state run time query gametime
execute if score #temp_gametime uws.state = @s uws.homing_time run return fail

execute store result storage uws:temp entity_data.x int 1 run data get entity @s Motion[0] 1000
execute store result storage uws:temp entity_data.y int 1 run data get entity @s Motion[1] 1000
execute store result storage uws:temp entity_data.z int 1 run data get entity @s Motion[2] 1000

function uws:effects/homing/get_velocity/calculate with storage uws:temp entity_data
execute store result score @s uws.state store result entity @s weapon.components.minecraft:custom_data.uws_effects.homing.velocity int 1 run data get entity 100000-0-0-0-0 transformation.scale[0]

return 1