setblock ~ ~ ~ minecraft:air destroy
$data merge entity @n[type=minecraft:item,nbt={Age:0s},distance=..1] {Item:{id:"$(id)",components:$(components),count:1}}