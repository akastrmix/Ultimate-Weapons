function uws:libraries/internal/lang/score/validate
execute if data storage uws:settings banned_effects[{name:resilience}] run return run function uws:libraries/internal/text/already_banned_effect

data modify storage uws:temp effect.name set value resilience
loot replace entity 100000-0-0-0-0 container.0 loot uws:internal/player_head
data modify storage uws:temp effect.source set from entity 100000-0-0-0-0 item.components.minecraft:profile.name
data modify storage uws:settings banned_effects append from storage uws:temp effect

data modify storage uws:lang temp."text.effect" set value {"text":"Resilience "}
function uws:libraries/internal/text/banned_effect

execute as @a if items entity @s armor.chest *[enchantments~[{enchantments:"uws:resilience"}]] run function uws:libraries/internal/text/effect_banned