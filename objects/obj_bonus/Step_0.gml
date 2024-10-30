// obj_bonus Step

// If player is in active gameplay
if (!obj_game_manager.game_state.pause && room == rm_gameplay) {
	// If proper value provided, stringify
	if (value != -1 && value_text == "") {
		value_text = string(value);
		
		// If value is for ammo bonus, make text orange
		if (value < 100) {
			color = c_orange;
		}
	}

	// Keep showing the bonus until time is up. Then, self destruct
	if (timer >= 0) {
		timer--;
	} else {
		instance_destroy();
	}
}
