// obj_game_manager Step

/// ROOM BEHAVIOR
if (room == rm_splash) {
	// Standby before starting gameplay
	if (keyboard_check_released(vk_enter)) {
		room = rm_standby;
		game_state.standby_snd_played = false;
		viewing_timer = viewing_duration;
	}
	
	// Update splash overlay color if new high score accomplished
	if (game_state.high_score_beat) {
		cycle_standby_color();
	}

} else if (room == rm_gameplay) {
	#region Key Presses
	// Quit game / Return to splash screen
	if (keyboard_check_released(vk_backspace)) {
		quit_game();
	
	// Standby before restarting game / returning to Wave 1
	} else if (keyboard_check_released(vk_enter)) {
		standby_restart();
	
	// (Un)Pause
	} else if (keyboard_check_released(vk_space) && !game_state.viewing) {
		game_state.pause = !game_state.pause;
	}
	#endregion
	
	configure_waves(); // Configure current game wave appropriately
	handle_lost_life(); // Handle a lost life appropriately

} else if (room == rm_standby) {
	// Play standby sound effect only once
	if (!game_state.standby_snd_played) {
		audio_play_sound_if_not_playing(snd_sword_swooshes, 0);
		game_state.standby_snd_played = true;
	}
	
	// After pressing ENTER to start, standby before moving to Wave 1
	if (wave == 0) {
		handle_standby(start_game);
	
	// After pressing ENTER to restart, standby before returning to Wave 1
	} else if (game_state.restarting) {
		handle_standby(restart_game);
	
	// Once hero loses all lives, standby for GAME OVER
	// before moving on to splash screen
	} else if (game_state.you_lost) {
		handle_standby(game_over);
	
	// Middle Waves = waves that are not Wave 0 or Final Wave
	// After winning middle waves, standby before moving to next wave
	} else if (wave > 0 && wave < FINAL_WAVE) {
		handle_standby(next_wave);
	
	// After winning last wave, standby for YOU WIN
	// before moving on to splash screen
	} else if (wave == FINAL_WAVE && game_state.you_won) {
		handle_standby(game_won);
	}
	
	// Update standby overlay color (except when GAME OVER)
	if ((wave >= 0 && wave <= FINAL_WAVE) && !game_state.you_lost) {
		cycle_standby_color();
	}
}
