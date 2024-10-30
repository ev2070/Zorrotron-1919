// Script that updates the sprite of a moveable non-hero depending on movement
function update_moveable_non_hero_sprite() {
	if (moving) {
		if (object_index == obj_grunt) {
			if (dir >= 135 && dir < 225) { // Left
				sprite_index = spr_grunt_left;
			} else if (dir >= 0 && dir <= 45 ||
						dir >= 315 && dir <= 360) { // Right
				sprite_index = spr_grunt_right;
			} else if (dir >= 45 && dir < 135) { // Up
				sprite_index = spr_grunt_up;
			} else if (dir >= 225 && dir < 315) {
				sprite_index = spr_grunt_down; // Down
			}
		} else if (object_index == obj_hulk) {
			if (hv == 0) { // Horizontal
				sprite_index = spr_hulk_left_right;
			} else if (hv == 1) { // Vertical
				sprite_index = spr_hulk_up_down;
			}
		} else if (object_index == obj_human) {
			if (dir_x == 0) { // Left
				sprite_index = spr_human_left;
			} else if (dir_x == 1) { // Right
				sprite_index = spr_human_right;
			} else if (dir_y == 0) { // Up
				sprite_index = spr_human_up;
			} else if (dir_y == 1) { // Down
				sprite_index = spr_human_down;
			} else if (dir_x == 2 && dir_y == 2) { // Idle
				sprite_index = spr_human_idle;
			}
		}
	}
}
