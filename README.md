# Ultimate Weapons
This datapack introduces powerful and highly customizable items that draws inspiration from major Minecraft servers, especially Hypixel, and aims to not use any tick functions to minimize impact on performance.

## Get item
To get an UWS item, simply type `/function uws:get_item/<item_type>`, the lore of the item tells you its feature and how you can use it. For customization, type `/function uws:get_item_config/<item_type>`, and you will be given 2 command blocks named `(item_name) Template` and `(item_name) Modifier`, each for generating item with custom arguments and modifying your held item's arguments, the `{uws_effect:{(effect_name):{}}}`compound will include all values that you can customize. Please note that the customization will only work when all arguments are complete and correctly formatted, missing one could lead to the use of default values.

## Set effect
Effects are what enable UWS items to function, you can also make other items get the same effect as an UWS item. If you want to figure out which effect an UWS item uses, just type `/data get entity @s SelectedItem.components.minecraft:custom_data.uws_effects`. And you can use `/function uws:set_effect/<effect_name>` to apply this effect to your held item.

## Switch language
This datapack supports 2 languages (English, Chinese) covering text messages and item lores. Use `/function uws:language/default/<lang>` to set the default language (English by default) and `/function uws:language/prefer/<lang>` to set your preferred language.
