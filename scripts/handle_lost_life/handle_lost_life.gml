// Script that handles the event where a hero loses a life during gameplay
function handle_lost_life() {
	// If the hero loses a life and hero still has at least one life,
	// allow the hero to keep playing the current wave
	if (game_state.life_lost && hero_lives >= 0) {
		// Pause immediately and disable hero's shooting state
		// to prevent auto bullet firing upon revival
		game_state.pause = true;
		obj_hero.shooting = false;
		
		if (life_lost_timer >= 0) {
			life_lost_timer--;
			
			// If either BACKSPACE or ENTER is pressed,
			// do not proceed with playing current wave
			if (keyboard_check_released(vk_backspace) ||
				keyboard_check_released(vk_enter)) {
				game_state.life_lost = false;
			}
		} else {
			// If neither BACKSPACE nor ENTER was pressed,
			// proceed with playing current wave
			if (game_state.life_lost) {
				destroy_stray_objects();
				reset_hero_orientation();
				reset_non_heroes();
				reset_qte(); // Also prevents extra electrode spawns
		
				game_state.life_lost = false;

				game_state.viewing = true;
				life_lost_timer = life_lost_duration;
				obj_game_manager.humans_saved = 0; // Reset humans' points worth
			}
		}
		
		if (game_state.viewing) { // Let player process that they lost a life
			view_wave();
		}
	
	// If the hero has lost all lives, standby for GAME OVER
	} else if (game_state.life_lost && hero_lives < 0) {
		game_state.pause = true;
		if (life_lost_timer >= 0) {
			life_lost_timer--;
		} else {
			update_high_score();

			game_state.life_lost = false;
			game_state.pause = false;
			game_state.you_lost = true;
			life_lost_timer = life_lost_duration;
			
			room = rm_standby;
			game_state.standby_snd_played = false;
		}
	}
}
