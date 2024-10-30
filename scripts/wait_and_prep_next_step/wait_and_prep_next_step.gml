// Script that allows a moveable non-hero to wait
// a moment and then prepare for the next step
function wait_and_prep_next_step(_moveable_non_hero) {
	// Check the object type of the moveable non-hero instance
	var _is_grunt = (_moveable_non_hero.object_index == obj_grunt);
	var _is_hulk = (_moveable_non_hero.object_index == obj_hulk);
	var _is_human = (_moveable_non_hero.object_index == obj_human);

	// Countdown
	if (timer >= 0) {
		timer--;
	// Time's up! Prepare for next step
	} else {
		if (_is_grunt || _is_hulk) {
			hv = irandom_range(0, 1);
			seconds = get_random_elem(seconds_arr);
		} else if (_is_human) {
			dir_x = irandom(2);
			dir_y = irandom(2);
		}

		timer = seconds * GAME_SPEED;
		moved = false;
	}
}
