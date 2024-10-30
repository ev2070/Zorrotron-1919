// Script that colorfully draws given text but
// centered relative to a given position
function draw_centered_text_color(_x, _y, _text, _color) {
	draw_text_color(_x - string_width(_text)/2, _y - string_height(_text)/2,
					_text, _color, _color, _color, _color, 1);
}
