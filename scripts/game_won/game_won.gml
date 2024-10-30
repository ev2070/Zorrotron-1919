// Script ends game when hero beats all waves
// and returns player to splash screen
function game_won() {
	update_high_score();
	game_score = 0;
	hero_lives = MAX_LIVES;
	wave = 0;
	curr_ammo = MAX_AMMO;
	game_state.wave_setup = false;
	game_state.you_won = false;
	room = rm_splash;
}
