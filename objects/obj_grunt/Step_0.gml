// obj_grunt Step

event_inherited();

// If player is in active gameplay
if (!obj_game_manager.game_state.pause && room == rm_gameplay) {
	// If a grunt hits an electrode, destroy both instances
	check_electrode_collision(id, snd_official_hurt);
}
