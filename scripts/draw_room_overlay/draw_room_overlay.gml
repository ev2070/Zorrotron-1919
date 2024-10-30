// Script that draws a overlay for the entire room
// with a new alpha value and given color
function draw_room_overlay(_new_alpha, _color) {
	draw_set_alpha(_new_alpha);
	draw_rectangle_color(0, 0, room_width, room_height,
		_color, _color, _color, _color, false);
	draw_set_alpha(1);
}
