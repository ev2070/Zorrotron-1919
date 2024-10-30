// Script that resets the hero's position and direction
function reset_hero_orientation() {
	obj_hero.x = obj_hero.start_x;
	obj_hero.y = obj_hero.start_y;
	obj_hero.dir = 270;
	obj_hero.sprite_index = spr_hero_idle;
}
