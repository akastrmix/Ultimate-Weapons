loot replace entity 100000-0-0-0-0 contents loot uws:internal/player_head
data modify storage uws:temp effect.source set from entity 100000-0-0-0-0 item.components.minecraft:profile.name
data modify storage uws:settings banned_effects append from storage uws:temp effect