// Script ends game when hero loses all lives
// and returns player to splash screen
function game_over() {
	hero_lives = MAX_LIVES;
	game_score = 0;
	wave = 0;
	curr_ammo = MAX_AMMO;
	game_state.you_lost = false;
	room = rm_splash;
}
