execute if items entity @s weapon.mainhand *[count=1] run item replace entity 100000-0-0-0-0 container.0 from entity @s weapon.mainhand
execute if items entity @s weapon.mainhand *[count=1] run return run function uws:libraries/schedule/handle_input {with:{command:"item replace entity @s weapon.mainhand from entity 100000-0-0-0-0 container.0",time:1}}

item replace entity @s weapon.mainhand from entity @s weapon.mainhand