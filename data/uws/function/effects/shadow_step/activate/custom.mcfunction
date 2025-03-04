$scoreboard players set @s uws.shadow_step_active_time $(duration)

$data modify storage uws:temp player.deactivate_condition set value $(deactivate_condition)
$data modify storage uws:temp player.sound_event_deactivate set value "$(sound_event_deactivate)"
$data modify storage uws:temp player.sound_pitch_deactivate set value "$(sound_pitch_deactivate)"
$data modify storage uws:temp player.use_cooldown set value $(use_cooldown)

$data modify storage uws:profile players[{UUID:$(UUID)}].effects.shadow_step set from storage uws:temp player

$particle $(particle_id) ~ ~0.45 ~ $(particle_spread) $(particle_spread) $(particle_spread) $(particle_speed) $(particle_count) force
$playsound $(sound_event_activate) player @a ~ ~ ~ 1 $(sound_pitch_activate)

return 1