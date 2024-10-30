// Script that spawns a bullet
function spawn_bullet() {
	// Spawn bullet with an offset depending on aim direction
	if (aim_up) {
		bullet_x = x;
		bullet_y = y - sprite_height/2;
	}
	if (aim_down) {
		bullet_x = x;
		bullet_y = y + sprite_height/2;
	}
	if (aim_left) {
		bullet_x = x - sprite_width/2;
		bullet_y = y;
	}
	if (aim_right) {
		bullet_x = x + sprite_width/2;
		bullet_y = y;
	}
	instance_create_depth(bullet_x, bullet_y, 0, obj_bullet);
}
