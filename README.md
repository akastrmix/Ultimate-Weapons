- [简体中文](https://github.com/akastrmix/Ultimate-Weapons/blob/main/README_ZH.md)
# Ultimate Weapons
Ultimate Weapons introduces powerful and highly customizable items for Minecraft 1.21.4+ that draws inspiration from major Minecraft servers, especially Hypixel, and aims to minimize performance impact by avoiding the use of tick functions.
<br><br>
## Quickstart
### Get item
To obtain an UWS item, simply run this command:
```mcfunction
/function uws:get_item/<item_name>
```
Currently, there are 14 available items, and more unique ones will be coming in future updates. All items are now only obtainable through commands, so as to give server admins full control over how items are distributed and utilized, allowing for flexible adaptation to gameplay without directly affecting mechanics through predefined recipes.

For the documentation of all UWS items, visit [this page](https://github.com/akastrmix/Ultimate-Weapons/wiki/Items).
<br><br>
### Customize item / effect
UWS items are driven by UWS effects that are customizable and independent, meaning the effects are not bound to a specific item and you have full control over their application, making things possible like stacking as many effects as you like onto an item. These effects are usually triggered through enchantments, advancements, or `consumable` components. Each UWS item is associated with a unique UWS effect. Visit [this page](https://github.com/akastrmix/Ultimate-Weapons/wiki/Effects) for the full documentation of all UWS effects.
<br><br>
To customize an UWS item / effect, first use this command:
```mcfunction
/function uws:get_item_config/<item_name>
```
This will give you two command blocks with name `<item_name> Template` and `<item_name> Modifier`. The `<item_name> Template` block is responsible for giving you an UWS item whilst allowing you to tweak its effects by editing its arguments, while the `<item_name> Modifier` lets you modify the effects of your held item.
<br><br>
- **In Template block:** Inside this block, look for this data:
```
"minecraft:custom_data":"{uws_effects:{<effect_name>:{key1:value,key2:value,...}}}"
```
The `<effect_name>` refers to the effect that will apply to this item; in this case, it is the effect that the UWS item is associated with. You can customize it by editing the `value` of specific fields in the object. A complete list of effect fields and their details can be found on the wiki.

Once you've finished editing, activate the command block to receive the customized version of the target UWS item.
<br><br>
- **In Modifier block:** Inside this block, look for the this data:
```
"minecraft:set_custom_data","tag":"{uws_effects:{<effect_name>:{key1:value,key2:value,...}}}"
```
This is similar to above. Modify the `value` of a given field in the object, then activate it to apply the changes to your held item's effect. This also ensures the item gains the necessary trigger to activate the effect.
<br><br>
> [!NOTE]
> Customization will only work if all arguments of the effect are complete and correctly formatted. Missing or incorrectly formatted arguments could result in all values falling back to their default ones when triggering the effect.

<br>

### Apply effect to other item
To apply an UWS effect to your held item, use the command below:
```mcfunction
/function uws:set_effect/<effect_name>
```
If you're not sure which effect is associated with which item, use this command to get the effect info of your held item:
```mcfunction
/function uws:help/lookup_held_item
```
<br>

### Manage effects
Ban an UWS effect:
```mcfunction
/function uws:ban_effect/<effect_name>
```
This will prevent the effect from being triggered. For blocks or items that are consumable, this also cancels their placement or consumption.

Unban an UWS effect or clear banlist:
```mcfunction
/function uws:unban_effect/<effect_name>
/function uws:unban_effect/all
```
<br>

### Adjust your preferences
Whether or not you have permission, you can use this command to view available options and adjust settings such as language, cooldown displays, and more:
```mcfunction
/trigger uws_options
```
Add `set <number>` at the end of the command to target a specific option.
<br><br>
## Notes
- Ultimate Weapons requires a persistent entity and a forceloaded chunk to function properly. Please avoid killing all entities (use `/kill @e[tag=!uws.persistent]` instead) or removing all forceloaded chunks in the overworld.
- Ultimate Weapons overrides vanilla loot tables to implement some advanced features, so it's advisable to ensure there are no conflicts with other packs.
- If you need to uninstall the datapack, you can use `/function uws:unload` to remove all traces left by it (player database not included).
<br>

## Supported languages
Ultimate Weapons supports the following languages (covering text messages and UWS item lores):
- English
- Simplified Chinese
- Cantonese (Hong Kong)

To switch between them, use the following commands:

**Set default language:**
```mcfunction
/function uws:language/default/<lang>
```
**Set your preferred language:**
```mcfunction
/function uws:language/prefer/<lang>
```
<br>

**The language for item lores may not update immediately after switching.*
<br><br>
## Credits
Thanks to **RTX3060Ti1604** (bilibili page: https://space.bilibili.com/518037264) for providing the Cantonese (Hong Kong) translation.
