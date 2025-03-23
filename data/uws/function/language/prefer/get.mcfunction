function uws:libraries/internal/lang/score/validate
execute if score @s uws.lang matches 1 run return run tellraw @s {"text":"Your preferred language is English","color":"green"}
execute if score @s uws.lang matches 2 run return run tellraw @s {"text":"你的偏好语言为简体中文","color":"green"}
execute if score @s uws.lang matches 3 run return run tellraw @s {"text":"你的偏好語言為繁體中文（香港）","color":"green"}
function uws:libraries/internal/text/preferred_lang_unset