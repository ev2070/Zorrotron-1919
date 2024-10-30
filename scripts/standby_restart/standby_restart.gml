// Script that goes into standby in preparation to restart the game
function standby_restart() {
	viewing_timer = viewing_duration;
		
	game_score = 0;
	hero_lives = MAX_LIVES-1;
	wave = 1;
		
	game_state.restarting = true;
	room = rm_standby;
	game_state.standby_snd_played = false;
}
