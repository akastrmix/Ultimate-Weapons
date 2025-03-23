tag @s add uws.replant_cover
execute unless block ~ ~1 ~ minecraft:nether_wart run data merge entity @s {height:0.127,width:1.001}
execute if block ~ ~1 ~ minecraft:nether_wart run data merge entity @s {height:0.314,width:1.001}

function uws:libraries/schedule/handle_input {with:{command:"kill @s",time:5}}