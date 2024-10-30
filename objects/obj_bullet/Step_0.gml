// obj_bullet Step

// If player is in active gameplay
if (!obj_game_manager.game_state.pause && room == rm_gameplay) {
	#region Boundary Check and Movement
	// Calculate new position
	new_x = x + lengthdir_x(spd, dir);
	new_y = y + lengthdir_y(spd, dir);

	// If bullet is in bounds, keep moving. Otherwise, self destruct
	if (new_x < left_bound || new_x > right_bound ||
		new_y < upper_bound || new_y > lower_bound) {
	    instance_destroy();
	} else {
	    x = new_x;
	    y = new_y;
	}
	#endregion

	#region Collision Checks
	// If bullet hits an electrode, destroy both instances
	check_electrode_collision(id, -1);

	// If bullet hits a grunt, destroy both instances and increase score
	check_grunt_collision(id, snd_official_hurt);

	// If bullet hits a hulk, slow hulk down and self destruct
	check_hulk_collision(id, snd_bullet_ricochet);
	#endregion
}
