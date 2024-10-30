// obj_hulk Step

event_inherited();

// If player is in active gameplay
if (!obj_game_manager.game_state.pause && room == rm_gameplay) {
	// If a hulk hits a human, kill human
	check_human_collision(id, snd_crash, -1);
}
