// obj_hero Step

// If player is in active gameplay
if (!obj_game_manager.game_state.pause && room == rm_gameplay) {
	// Hero must stay within bounds
	keep_in_bounds();

	check_hero_states(); // States for hero movement and aim for shooting
	move_hero();
	
	// Resume sprite animation, if not already resumed
	if (image_speed != 1) { image_speed = 1; }
	update_hero_sprite();
	
	if (shooting) { set_bullet_direction(); }
	regulate_ammo();
	shoot_bullet();

	#region Collision Checks
	// If hero hits an electrode / grunt / hulk, hero loses a life
	check_electrode_collision(id, snd_grunt);
	check_grunt_collision(id, snd_grunt);
	check_hulk_collision(id, snd_grunt);

	// If a hero saves a human, destroy human; increase game score & ammo
	check_human_collision(id, snd_phew, snd_gun_reload);
	#endregion

	#region Reset movement and shooting booleans
	move_up = false;
	move_down = false;
	move_left = false;
	move_right = false;

	aim_up = false;
	aim_down = false;
	aim_left = false;
	aim_right = false;
	#endregion

// If player is in paused gameplay
} else if (obj_game_manager.game_state.pause && room == rm_gameplay) {
	// Pause sprite animation, if not already paused
	if (image_speed != 0) { image_speed = 0; }
}
