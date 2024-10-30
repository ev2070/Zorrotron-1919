// obj_quick_time_event Create

// Position
x = room_width/3.5;
y = room_height/35;

// Outermost bar dimensions
bar_width = 192;
bar_height = 32;

// White bar coordinates
x1 = room_width/4;
y1 = room_height/35 - bar_height/2 + 3;
x2 = x1 + bar_width;
y2 = y1 + bar_height;

// Red rectangle dimensions
elapse_max_width = 190;
elapse_height = 30;

// Red rectangle coordinates
elapsed_x1 = x1 + 2;
elapsed_y1 = y1;
elapsed_x2 = elapsed_x1; // Crucial for moving hand & expanding red bar
elapsed_y2 = elapsed_y1 + elapse_height - 1;

// Sweet Spot dimensions
sweet_spot_widths = [5, 10, 15];
sweet_spot_width = get_random_elem(sweet_spot_widths);

// Sweet Spot coordinates
sweet_spot_x1 = random_range(elapsed_x1 + elapse_max_width/5,
                            elapsed_x1 + elapse_max_width*0.8);
sweet_spot_y1 = elapsed_y1;
sweet_spot_x2 = sweet_spot_x1 + sweet_spot_width;
sweet_spot_y2 = elapsed_y2;

// Hand coordinates and speed
hand_x_end = elapsed_x1 + elapse_max_width - 1;
hand_y1 = elapsed_y1-7;
hand_y2 = elapsed_y2+7;

hand_spd = (hand_x_end-elapsed_x2)/obj_hero.ammo_duration

// Ammo acquired from QTE sweet spot
added_ammo = 0;
