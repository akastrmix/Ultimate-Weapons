advancement revoke @s only uws:internal/lang/change_dimension
scoreboard players set @s uws.leave_game 0

function uws:libraries/internal/lang/score/validate
execute if predicate uws:is_lang_mismatch/mainhand run function uws:libraries/internal/lang/update_item/mainhand with entity @s SelectedItem.components.minecraft:custom_data.uws_item
execute if predicate uws:is_lang_mismatch/offhand run function uws:libraries/internal/lang/update_item/offhand with entity @s Inventory[{Slot:-106b}].components.minecraft:custom_data.uws_item
execute if predicate uws:is_lang_mismatch/head run function uws:libraries/internal/lang/update_item/head with entity @s Inventory[{Slot:103b}].components.minecraft:custom_data.uws_item
execute if predicate uws:is_lang_mismatch/chest run function uws:libraries/internal/lang/update_item/chest with entity @s Inventory[{Slot:102b}].components.minecraft:custom_data.uws_item
execute if predicate uws:is_lang_mismatch/legs run function uws:libraries/internal/lang/update_item/legs with entity @s Inventory[{Slot:101b}].components.minecraft:custom_data.uws_item
execute if predicate uws:is_lang_mismatch/feet run function uws:libraries/internal/lang/update_item/feet with entity @s Inventory[{Slot:100b}].components.minecraft:custom_data.uws_item