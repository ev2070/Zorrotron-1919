// Script that renders a given number of a
// type of HUD (Heads-Up Display) element
function draw_hud_elements(_start, _offset, _max, _obj) {
	for (var _i = 0; _i < _max; _i++) {
		instance_create_depth(_start + _offset*_i, room_height/35, -1, _obj);
	}
}
