// Script that allows the player to view the current wave
function view_wave() {
	game_state.pause = true;
	if (viewing_timer >= 0) {
		viewing_timer--;
	} else {
		game_state.pause = false;
		viewing_timer = viewing_duration;
		game_state.viewing = false;
	}
}
