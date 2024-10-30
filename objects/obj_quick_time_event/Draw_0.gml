// obj_quick_time_event Draw

// White bar (2px stroke weight)
draw_set_alpha(0.35);
draw_rectangle_color(x1, y1, x2, y2, c_white, c_white, c_white, c_white, true);
draw_rectangle_color(x1+1, y1+1, x2-1, y2-1,
					c_white, c_white, c_white, c_white, true);
draw_set_alpha(1);

// Red rectangle that expands as time elapses
draw_rectangle_color(elapsed_x1, elapsed_y1, elapsed_x2, elapsed_y2,
					c_red, c_red, c_red, c_red, false);

// Green Sweet Spot
draw_rectangle_color(sweet_spot_x1, sweet_spot_y1, sweet_spot_x2,
					sweet_spot_y2, c_lime, c_lime, c_lime, c_lime, false);

// QTE Moving Hand
draw_line_width_color(elapsed_x2, hand_y1, elapsed_x2, hand_y2, 2,
						c_white, c_white);

// Instruction
draw_centered_text_color((x1+x2)/2, y + bar_height*1.25, "PRESS O", c_red);
