// obj_moveable_non_hero Create

// Room bounds relative to moveable non-hero
left_bound = sprite_width/2;
right_bound = room_width - sprite_width/2;
upper_bound = sprite_height/2;
lower_bound = room_height - sprite_height/2;

// Position where moveable non-hero will slide to
target_x = x;
target_y = y;
slide_spd = 0; // placeholder value

dist_from_target = 1;

// Boolean
moving = false;
moved = false;
