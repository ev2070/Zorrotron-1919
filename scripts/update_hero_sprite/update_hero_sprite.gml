// Script that updates the hero's sprite depending on movement
function update_hero_sprite() {
	if (move_left || (move_left && (move_up || move_down))) {
		sprite_index = spr_hero_left;
	} else if (move_right || (move_right && (move_up || move_down))) {
		sprite_index = spr_hero_right;
	} else if (move_up) {
		sprite_index = spr_hero_up;
	} else if (move_down) {
		sprite_index = spr_hero_down;
	} else if (!move_up && !move_down && !move_left && !move_right) {
		sprite_index = spr_hero_idle;
	}
}
