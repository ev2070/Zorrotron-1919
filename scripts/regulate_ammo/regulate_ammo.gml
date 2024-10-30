// Script that regulates the depletion and reloading of hero's ammo
function regulate_ammo() {
	// Ensure hero has at most 20 bullets of ammo
	obj_game_manager.curr_ammo = clamp(obj_game_manager.curr_ammo,
									0, MAX_AMMO);
	
	// If hero runs out of ammo, must wait before getting more
	if (obj_game_manager.curr_ammo <= 0) {
		// Disable shooting to prevent auto bullet firing after ammo runs out
		shooting = false;
		
		 // Create one QTE and spawn a few more electrodes
		if (instance_number(obj_quick_time_event) < 1) {
			instance_create_depth(x, y, -1, obj_quick_time_event);
			spawn_non_hero(obj_electrode,
					max(3, floor(instance_number(obj_electrode) * 0.2) + 2));
		}
		
		// Countdown ammo timer
		if (ammo_timer >= 0) {
			ammo_timer--;
		// Time's up, reset ammo timer
		} else {
			ammo_timer = ammo_duration;
		}
	}
}
