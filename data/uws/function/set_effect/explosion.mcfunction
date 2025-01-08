function uws:libraries/internal/lang/score/validate
execute unless items entity @s weapon.mainhand * run return run function uws:libraries/internal/text/not_holding_item
execute if items entity @s weapon.mainhand *[custom_data~{uws_effects:{explosion:{}}},enchantments~[{enchantments:"uws:explosion"}]] run return run function uws:libraries/internal/text/item_already_has_effect

item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_data","tag":"{uws_effects:{explosion:{}}}"},{"function":"minecraft:set_enchantments","enchantments":{"uws:explosion":1}}]
data modify storage uws:lang temp."text.effect" set value {"text":"Explosion"}
function uws:libraries/internal/text/applied_effect_to_item