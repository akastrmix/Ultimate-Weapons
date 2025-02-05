# Ultimate Weapons
Ultimate Weapons为Minecraft 1.21.4+带来了众多强大且可高度自定义的物品，灵感来源于主流Minecraft服务器，例如Hypixel。此外，本数据包通过避免使用tick函数来尽量降低性能影响。
<br><br>
## 开始使用
### 获得物品
运行此命令来获得一个UWS物品：
```mcfunction
/function uws:get_item/<item_name>
```
当前已有10个可用物品，同时，更多物品也计划在将来推出。目前所有物品仅能通过命令获得，通过将物品的获取和控制权交给服务器管理人员来确保灵活性，自由决定物品融入游戏玩法方式的同时避免通过预设配方直接影响游戏机制。

要查看UWS物品列表，请访问[此页面](https://github.com/akastrmix/Ultimate-Weapons/wiki/%E7%89%A9%E5%93%81)。
<br><br>
### 自定义物品/效果
UWS物品由可自定义的UWS效果所驱动，这些效果是独立的，即效果并不绑定在特定物品上而是完全可操控的，可以做到像堆叠多个效果到一个物品上这样的操作。这些效果通常通过附魔、进度或`consumable`组件来触发，每个UWS物品都与一个特定的UWS效果相关联。
<br><br>
要自定义某个UWS物品/效果，首先使用以下命令：
```mcfunction
/function uws:get_item_config/<item_name>
```
此命令将给予你两个命令方块，名字分别为`<item_name> Template`和`<item_name> Modifier`。`<item_name> Template`命令方块负责生成带有可自定义效果的UWS物品，而`<item_name> Modifier`可以让你修改当前手持物品的效果。
<br><br>
- **Template命令方块：** 在此命令方块中，查找以下数据：
```
"minecraft:custom_data":"{uws_effects:{<effect_name>:{key1:value,key2:value,...}}}"
```
`<effect_name>`是即将应用于此物品的效果，在上述情况下，是该UWS物品所关联的效果。你可以通过编辑对象中特定字段的`value`来进行自定义。访问[此页面](https://github.com/akastrmix/Ultimate-Weapons/wiki/%E6%95%88%E6%9E%9C)来查看所有效果的可自定义字段完整列表。

编辑完成后，激活此命令方块即可获得自定义版本的目标UWS物品。
<br><br>
- **Modifier命令方块：** 在此命令方块中，查找以下数据：
```
"minecraft:set_custom_data","tag":"{uws_effects:{<effect_name>:{key1:value,key2:value,...}}}"
```
与上面类似，修改对象中某个字段的`value`，然后激活命令方块来修改你手持物品的效果。此操作同时确保物品拥有必要的触发器以保证效果的成功激活。
<br><br>
> [!NOTE]
> 自定义仅在效果的所有参数完整且格式正确时生效。若参数缺失或格式不正确，可能导致效果触发时所有参数回退为默认值。

<br>

### 应用效果到其他物品
使用以下命令将UWS效果应用于你的手持物品：
```mcfunction
/function uws:set_effect/<effect_name>
```
如果你不确定哪个效果与哪个物品相关联，可以使用此命令来获取当前手持物品的效果信息：
```mcfunction
/data get entity @s SelectedItem.components.minecraft:custom_data.uws_effects
```
<br>

### 管理效果
禁止某个UWS效果：
```mcfunction
/function uws:ban_effect/<effect_name>
```
此操作将阻止效果触发。对于方块或者可消耗物品，还会取消其放置或消耗。

解禁某个UWS效果或直接清除封禁列表：
```mcfunction
/function uws:unban_effect/<effect_name>
/function uws:unban_effect/all
```
<br>

## 支持的语言
此数据包支持以下语言（包含文本消息和UWS物品描述）：
- English (默认)
- 简体中文

可使用以下命令切换语言：

**设置默认语言：**
```mcfunction
/function uws:language/default/<lang>
```
**设置你的偏好语言：**
```mcfunction
/function uws:language/prefer/<lang>
```
<br>

**物品描述的语言在切换后可能不会及时更新。*
