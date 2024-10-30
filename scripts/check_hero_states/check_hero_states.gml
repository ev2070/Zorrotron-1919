// Script that checks for the hero's movement, aim, and shooting states
function check_hero_states() {
	// Check movement
	if (keyboard_check(ord("W"))) { move_up    = true; }
	if (keyboard_check(ord("S"))) { move_down  = true; }
	if (keyboard_check(ord("A"))) { move_left  = true; }
	if (keyboard_check(ord("D"))) { move_right = true; }
	
	// Check aim
	if keyboard_check(ord("I")) { aim_up    = true; }
	if keyboard_check(ord("K")) { aim_down  = true; }
	if keyboard_check(ord("J")) { aim_left  = true; }
	if keyboard_check(ord("L")) { aim_right = true; }
	
	// If hero is aiming, then they'll want to shoot
	if (aim_up || aim_down || aim_left || aim_right) { shooting = true; }
}
