// Script that creates and fires a shot
function shoot_bullet() {
	// Decrement shot cooldown, never go below 0 to control firing rate
	shot_cooldown = max(0, shot_cooldown-1);
	
	// If player can and wants to shoot, make the shot
	if (shooting && shot_cooldown <= 0 && obj_game_manager.curr_ammo > 0) {
		spawn_bullet();
		obj_game_manager.curr_ammo--;
	    shot_cooldown = shot_delay;
		shooting = false;
	}
}
