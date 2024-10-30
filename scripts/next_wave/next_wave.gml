// Script that takes the player to the next game wave
function next_wave() {
	wave++;
	game_state.wave_setup = false;
	room = rm_gameplay;
}
