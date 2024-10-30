// Script that restarts game and returns player back to Wave 1
function restart_game() {
	game_state.pause = false;
	game_state.restarting = false;
	game_state.wave_setup = false;
	room = rm_gameplay;
}
