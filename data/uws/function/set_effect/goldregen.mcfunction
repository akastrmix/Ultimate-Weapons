function uws:libraries/internal/lang/score/validate
execute unless items entity @s weapon.mainhand * run return run function uws:libraries/internal/text/not_holding_item
execute unless items entity @s weapon.mainhand #uws:goldregen_applicable run return run function uws:libraries/internal/text/item_not_support_effect
execute if items entity @s weapon.mainhand *[custom_data~{uws_effects:{goldregen:{}}},consumable] run return run function uws:libraries/internal/text/item_already_has_effect

item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_data","tag":"{uws_effects:{goldregen:{}}}"},{"function":"minecraft:set_components","components":{"minecraft:consumable":{"consume_seconds":0,"sound":"minecraft:intentionally_empty","has_consume_particles":false},"minecraft:use_cooldown":{"seconds":1,"cooldown_group":"uws:golden_head"}}}]
data modify storage uws:lang temp."text.effect" set value {"text":"Goldregen"}
function uws:libraries/internal/text/applied_effect_to_item