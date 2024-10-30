// Script that resets the positions & target position of all
// non-heroes in the current wave as well as their sprite
function reset_non_heroes() {
	set_non_hero_random_position(obj_electrode);
	set_non_hero_random_position(obj_grunt);
	set_non_hero_random_position(obj_hulk);
	set_non_hero_random_position(obj_human);
	
	with (obj_moveable_non_hero) {
		target_x = x;
		target_y = y;
		
		if (object_index == obj_grunt) {
			sprite_index = spr_grunt_idle;
		} else if (object_index == obj_hulk) {
			sprite_index = spr_hulk_idle;
		} else if (object_index == obj_human) {
			sprite_index = spr_human_idle;
		}
	}
	
	with (obj_electrode) {
		image_index = 0;
	}
}
