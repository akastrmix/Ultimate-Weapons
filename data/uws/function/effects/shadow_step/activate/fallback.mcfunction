scoreboard players set @s uws.shadow_step_active_time 200

data modify storage uws:temp player.deactivate_conditions set value ["crit_hit","taken_hit"]
data modify storage uws:temp player.sound_event_deactivate set value "minecraft:entity.generic.extinguish_fire"
data modify storage uws:temp player.sound_pitch_deactivate set value 1
data modify storage uws:temp player.use_cooldown set value 600

$data modify storage uws:profile players[{UUID:$(UUID)}].effects.shadow_step set from storage uws:temp player

particle minecraft:large_smoke ~ ~0.45 ~ 0.2 0.2 0.2 0 30 force
playsound minecraft:entity.generic.extinguish_fire player @a