// obj_electrode Step

// If player is in active gameplay
if (!obj_game_manager.game_state.pause && room == rm_gameplay) {
	// Resume sprite animation, if not already resumed
	if (image_speed != 1) { image_speed = 1; }
	
	// Electrode must stay in bounds
	keep_in_bounds();

// If player is in paused gameplay
} else if (obj_game_manager.game_state.pause && room == rm_gameplay) {
	// Pause sprite animation, if not already paused
	if (image_speed != 0) { image_speed = 0; }
}
