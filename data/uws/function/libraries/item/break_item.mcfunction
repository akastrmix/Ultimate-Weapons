item modify entity @s weapon.mainhand {"function":"minecraft:set_count","count":-1,"add":true}
$execute positioned ~ ~1.2 ~ run particle minecraft:item{item:"$(id)"} ^ ^ ^0.3 0.125 0.125 0.125 0.1 10 force
playsound minecraft:entity.item.break player @a