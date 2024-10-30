// obj_jail Step

// Once player has processed that they've lost
// a life (by getting locked up), self destruct
if (obj_game_manager.game_state.life_lost &&
	obj_game_manager.hero_lives >= 0 &&
	obj_game_manager.life_lost_timer < 0 &&
	!obj_game_manager.game_state.viewing) {
	instance_destroy();
}
