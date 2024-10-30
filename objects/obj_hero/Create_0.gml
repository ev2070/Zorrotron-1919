// obj_hero Create

// Position variables
start_x = (room == rm_gameplay) ? room_width/2 : x;
start_y = (room == rm_gameplay) ? room_height/2 : y;

x = start_x;
y = start_y;

// Room bounds relative to hero
left_bound = sprite_width/2;
right_bound = room_width - sprite_width/2;
upper_bound = sprite_height/2;
lower_bound = room_height - sprite_height/2;

// For movement
move_up = false;
move_down = false;
move_left = false;
move_right = false;

spd = 3;

// For shooting
aim_up = false;
aim_down = false;
aim_left = false;
aim_right = false;

shooting = false;

shot_cooldown = 0; // Cooldown between shots (in steps)
shot_delay = 5; // Delay between shots (in steps)

// Bullets will have an offset depending on hero's aim direction
bullet_x = x;
bullet_y = y;
bullet_dir = 270; // Shoot down by default

// Twist - Ammo limit
ammo_duration = 3 * GAME_SPEED;
ammo_timer = ammo_duration;

// For blood
max_splatter_radius = 175;
