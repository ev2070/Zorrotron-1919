// obj_hulk Create

event_inherited();

// Movement variables
slide_spd = DEFAULT_SLIDE_SPEED;
speeds = [55, 65, 75];
spd = get_random_elem(speeds);
dir = point_direction(x, y, x, y); // Last two args are placeholders
hv = irandom_range(0,1); // 0 - horizontally, 1 - vertically

// Timer variables
seconds_arr = [0.3, 0.2, 0.1];
seconds = get_random_elem(seconds_arr);
timer = seconds * GAME_SPEED;

// For blood
max_splatter_radius = 30;

// Find nearest human to chase later
nearest_human = noone;
