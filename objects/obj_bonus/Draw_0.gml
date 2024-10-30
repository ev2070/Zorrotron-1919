// obj_bonus Draw

// If a human was saved, have them say thank you
if (value >= 1000) {
	draw_text(x, y-20, "THANK YOU!");
}

// Show +<bonus points> for ammo or game score
draw_text_color(x, y, "+" + value_text, color, color, color, color, 1);
