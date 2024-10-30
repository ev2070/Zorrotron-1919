// Script that draws given text but centered relative to a given position
function draw_centered_text(_x, _y, _text) {
	draw_text(_x - string_width(_text)/2, _y - string_height(_text)/2, _text);
}
