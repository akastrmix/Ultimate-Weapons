$execute if data storage uws:profile players[{UUID:$(UUID)}].effects.anchor.awaits_loading run return run function uws:effects/anchor/cancel_placement

$function uws:effects/anchor/get_player_id {UUID:$(UUID)}
$execute unless data storage uws:profile players[{UUID:$(UUID)}].effects.anchor.has_placed run return run function uws:effects/anchor/effect/set_anchor/mark_location {UUID:$(UUID)}
$execute if data storage uws:profile players[{UUID:$(UUID)}].effects.anchor.has_placed run return run function uws:effects/anchor/effect/attempt_teleport/get_teleporter_data {UUID:$(UUID)}