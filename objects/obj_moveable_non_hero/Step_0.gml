// obj_moveable_non_hero Step

// If player is in active gameplay
if (!obj_game_manager.game_state.pause && room == rm_gameplay) {
	// Moveable non-hero must stay in bounds
	keep_in_bounds();
	
	#region Movement
	// If ready to take a new step, find target position
	if (!moved && !moving) {
		set_target_position(id);
	}
	
	// Move towards target position smoothly
	if (moving) {
		x += (target_x - x) * slide_spd;
		y += (target_y - y) * slide_spd;
	
		// If close enough to target, snap to target position
		// prepare to pause further movement after step is taken
		if (abs(x - target_x) < dist_from_target &&
			abs(y - target_y) < dist_from_target) {
		    x = target_x;
		    y = target_y;
			moving = false;
		    moved = true;
		}
	}
	
	// Once a step has been taken, pause movement and prepare next step
    if (moved && !moving) {
        wait_and_prep_next_step(id);
    }
	#endregion
	
	// Resume sprite animation, if not already resumed
	if (image_speed != 1) { image_speed = 1; }
	update_moveable_non_hero_sprite();

// If player is in paused gameplay
} else if (obj_game_manager.game_state.pause && room == rm_gameplay) {
	// Pause sprite animation, if not already paused
	if (image_speed != 0) { image_speed = 0; }
}
