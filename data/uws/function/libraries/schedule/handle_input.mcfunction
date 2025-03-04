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

$data modify storage uws:temp schedule.input set value $(with)

execute store result storage uws:temp schedule.input.time int 1 run function uws:libraries/schedule/create_task with storage uws:temp schedule.input
execute store result storage uws:temp schedule.input.id int 1 run scoreboard players add #schedule uws.state 1

execute unless score @s uws.schedule_id = @s uws.schedule_id store result score @s uws.schedule_id run scoreboard players add #uws_general uws.schedule_id 1
execute store result storage uws:temp schedule.input.entity_id int 1 run scoreboard players get @s uws.schedule_id

data modify storage uws:temp schedule.queue prepend from storage uws:temp schedule.input
return run scoreboard players get #schedule uws.state