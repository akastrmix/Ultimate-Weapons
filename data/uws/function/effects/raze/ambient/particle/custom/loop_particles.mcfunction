function uws:effects/raze/ambient/particle/custom/play_particle with storage uws:temp item_data.particles[0]

data remove storage uws:temp item_data.particles[0]
execute if data storage uws:temp item_data.particles[0] run function uws:effects/raze/ambient/particle/custom/loop_particles