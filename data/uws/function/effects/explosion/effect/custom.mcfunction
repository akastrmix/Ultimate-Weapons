$damage @s $(damage) $(damage_type)
$particle $(particle_id) ~ ~0.45 ~ $(particle_spread) $(particle_spread) $(particle_spread) $(particle_speed) $(particle_count) force
$playsound $(sound_event) block @a ~ ~ ~ 1 $(sound_pitch)

return 1