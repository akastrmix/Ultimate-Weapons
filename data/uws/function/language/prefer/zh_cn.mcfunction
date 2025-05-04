function uws:libraries/internal/lang/preferred/set_to_zh_cn with entity @s
scoreboard players set @s uws.lang 2

function uws:libraries/internal/lang/score/validate
function uws:libraries/internal/lang/update_item/equipment
tellraw @s {text:"你的偏好语言已设为简体中文",color:"green"}