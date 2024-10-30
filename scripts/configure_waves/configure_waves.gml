// Script that configures the game's waves
function configure_waves() {
	for (var _wave = 0; _wave <= FINAL_WAVE; _wave++) {
		if (wave == _wave) {
			// If wave not set up
			if (!game_state.wave_setup) {
				if (wave == 1) { // Starting new game
					game_state.high_score_beat = false;
				}
				setup_wave(wave);
		
			// Get a feel for the wave's setup
			} else if (game_state.viewing) {
				view_wave();
		
			// Standby before moving to next wave or,
			// if YOU WON, to splash screen
			} else if (game_state.wave_setup &&
						instance_number(obj_grunt) == 0) {
				if (wave == FINAL_WAVE) {
					game_state.you_won = true;
				}
				room = rm_standby;
				game_state.standby_snd_played = false;
			}
		}
	}
}
