// Script that sets the direction of a bullet the hero will shoot
function set_bullet_direction() {
	if (aim_right) { bullet_dir = 0; }
	if (aim_up)    { bullet_dir = 90; }
	if (aim_left)  { bullet_dir = 180; }
	if (aim_down)  { bullet_dir = 270; }	
	if (aim_right && aim_up)   { bullet_dir = 45;  }
	if (aim_left && aim_up)    { bullet_dir = 135; }
	if (aim_left && aim_down)  { bullet_dir = 225; }
	if (aim_right && aim_down) { bullet_dir = 315; }
}
