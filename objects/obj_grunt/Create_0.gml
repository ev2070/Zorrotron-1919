// obj_grunt Create

event_inherited();

points_worth = 100;

// Movement variables
slide_spd = DEFAULT_SLIDE_SPEED;
speeds = [40, 50, 60];
spd = get_random_elem(speeds);
hv = irandom_range(0, 1); // 0 - horizontally, 1 - vertically
dir = point_direction(x, y, obj_hero.x, obj_hero.y);

// Timer variables
seconds_arr = [0.375, 0.275, 0.175];
seconds = get_random_elem(seconds_arr);
timer = seconds * GAME_SPEED;
