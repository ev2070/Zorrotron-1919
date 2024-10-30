// Script that quits game and returns player to splash screen
function quit_game() {
	game_state.pause = false;
	game_state.viewing = false;
		
	room = rm_splash;
	viewing_timer = viewing_duration;
		
	game_score = 0;
	hero_lives = MAX_LIVES;
	wave = 0;
	curr_ammo = MAX_AMMO;
	game_state.wave_setup = false;
}
