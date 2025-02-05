function uws:libraries/internal/lang/score/validate
execute unless items entity @s weapon.mainhand * run return run function uws:libraries/internal/text/not_holding_item
execute if items entity @s weapon.mainhand *[custom_data~{uws_effects:{phantom:{}}},consumable] run return run function uws:libraries/internal/text/item_already_has_effect

item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_data","tag":"{uws_effects:{phantom:{}}}"},{"function":"minecraft:set_components","components":{"minecraft:consumable":{"consume_seconds":0,"sound":"minecraft:intentionally_empty","has_consume_particles":false}}}]
data modify storage uws:lang temp."text.effect" set value {"text":"Phantom"}
function uws:libraries/internal/text/applied_effect_to_item