function uws:libraries/internal/lang/score/validate
execute unless items entity @s weapon.mainhand * run return run function uws:libraries/internal/text/not_holding_item
execute if items entity @s weapon.mainhand *[custom_data~{uws_effects:{edging:{}}},enchantments~[{enchantments:"uws:edging"}]] run return run function uws:libraries/internal/text/item_already_has_effect

item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_data","tag":"{uws_effects:{edging:{}}}"},{"function":"minecraft:set_enchantments","enchantments":{"uws:edging":1}}]
data modify storage uws:lang temp."text.effect" set value {"text":"Edging"}
function uws:libraries/internal/text/applied_effect_to_item