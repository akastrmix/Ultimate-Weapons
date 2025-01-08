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

data modify storage uws:temp schedule.slice set value []
execute store result storage uws:temp schedule.gametime int 1 run time query gametime
function uws:libraries/schedule/callback/slice_tasks with storage uws:temp schedule

execute if data storage uws:temp schedule.slice[-1] run function uws:libraries/schedule/callback/loop_tasks