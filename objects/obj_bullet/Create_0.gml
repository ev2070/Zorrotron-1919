// obj_bullet Create

// Bullet instance variables
spd = 15;
dir = 0;
if (room == rm_gameplay) {
	dir = obj_hero.bullet_dir;
	x = obj_hero.x + lengthdir_x(spd, dir);
	y = obj_hero.y + lengthdir_y(spd, dir);
}
new_x = x;
new_y = y;
image_angle = dir;

// Room bounds relative to bullet
left_bound = -sprite_width/2;
right_bound = room_width + sprite_width/2;
upper_bound = -sprite_height/2;
lower_bound = room_height + sprite_height/2;

// For sound
if (room == rm_gameplay) {
	audio_play_sound_no_loop(snd_gunshot);
}

// For blood
max_splatter_radius = 30;
