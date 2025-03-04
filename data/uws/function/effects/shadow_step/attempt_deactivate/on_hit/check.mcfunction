$data modify storage uws:temp player set from storage uws:profile players[{UUID:$(UUID)}].effects.shadow_step
execute unless data storage uws:temp {player:{deactivate_condition:["hit"]}} unless data storage uws:temp {player:{deactivate_condition:["crit_hit"]}} run return fail
execute if data storage uws:temp {player:{deactivate_condition:["crit_hit"]}} unless predicate uws:can_critical_hit run return fail

$data modify storage uws:temp entity_data.effects set from storage uws:profile players[{UUID:$(UUID)}].effects.shadow_step.effects
function uws:effects/shadow_step/remove_effect/loop_effects
$function uws:effects/shadow_step/deactivate/execute with storage uws:profile players[{UUID:$(UUID)}].effects.shadow_step