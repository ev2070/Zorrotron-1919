// Script that updates the player's overall high score
function update_high_score() {
	if (game_score > high_score) {
		high_score = game_score;
		game_state.high_score_beat = true;
	}
}
