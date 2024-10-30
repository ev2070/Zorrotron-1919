// Script that updates the position of the hero for movement
function move_hero() {
	if (move_up)    { y -= spd; }
	if (move_down)  { y += spd; } 
	if (move_left)  { x -= spd; }
	if (move_right) { x += spd; }
}
