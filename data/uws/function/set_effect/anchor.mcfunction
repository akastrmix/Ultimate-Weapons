function uws:libraries/internal/lang/score/validate
execute unless items entity @s weapon.mainhand * run return run function uws:libraries/internal/text/not_holding_item
execute unless items entity @s weapon.mainhand #uws:anchor_applicable run return run function uws:libraries/internal/text/item_not_support_effect
execute if items entity @s weapon.mainhand *[custom_data~{uws_effects:{anchor:{}}}] run return run function uws:libraries/internal/text/item_already_has_effect

item modify entity @s weapon.mainhand {"function":"minecraft:set_custom_data","tag":"{uws_effects:{anchor:{}}}"}
data modify storage uws:lang temp."text.effect" set value {"text":"Anchor"}
function uws:libraries/internal/text/applied_effect_to_item