// obj_quick_time_event Step

// If player is in active gameplay
if (!obj_game_manager.game_state.pause && room == rm_gameplay) {
	// Hand will slide to the right and red progress bar will expand
	if (elapsed_x2 < hand_x_end) {
	    elapsed_x2 += hand_spd;
		
		// If hand reaches the end of white bar
	    if (elapsed_x2 >= hand_x_end) {
	        elapsed_x2 = hand_x_end; // Hand sticks at the end
			
			// If hero still has no ammo, add more
			if (obj_game_manager.curr_ammo == 0) {
				audio_play_sound_if_not_playing(snd_gun_reload, 0);
				obj_game_manager.curr_ammo += DEFAULT_AMMO;
				spawn_bonus(x2 * 1.02, y, DEFAULT_AMMO);
			}
			
			instance_destroy(); // Self destruct
	    }
	}
	
	// Self destruct if ammo is acquired elsewhere (via human)
	if (obj_game_manager.curr_ammo > 0) {
		instance_destroy();
	}

	// If O is pressed when hand is on sweet spot,
	// add some ammo (dependent on sweet spot size) and self destruct
	if (elapsed_x2 >= sweet_spot_x1 && elapsed_x2 <= sweet_spot_x2 &&
		keyboard_check_pressed(ord("O"))) {	
			 if (sweet_spot_width ==  5) { added_ammo = DEFAULT_AMMO*4; }
		else if (sweet_spot_width == 10) { added_ammo = DEFAULT_AMMO*2; }
		else if (sweet_spot_width == 15) { added_ammo = DEFAULT_AMMO;   }
		
		audio_play_sound_if_not_playing(snd_gun_reload, 0);
		obj_game_manager.curr_ammo += added_ammo;
		spawn_bonus(x2 * 1.02, y, added_ammo);
		instance_destroy();
	}
}
