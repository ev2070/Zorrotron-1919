// Script that starts game and takes player to Wave 1
function start_game() {
	game_score = 0;
	hero_lives--;
	wave = 1;
	game_state.pause = false;
	game_state.wave_setup = false;
	room = rm_gameplay;
}
