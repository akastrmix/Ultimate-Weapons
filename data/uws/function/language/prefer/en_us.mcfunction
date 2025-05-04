function uws:libraries/internal/lang/preferred/set_to_en_us with entity @s
scoreboard players set @s uws.lang 1

function uws:libraries/internal/lang/score/validate
function uws:libraries/internal/lang/update_item/equipment
tellraw @s {text:"Your preferred language has been set to English",color:"green"}