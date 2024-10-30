// obj_electrode Create

// Room bounds relative to electrode
left_bound = sprite_width/2;
right_bound = room_width - sprite_width/2;
upper_bound = sprite_height/2;
lower_bound = room_height - sprite_height/2;

if (room == rm_gameplay) {
	depth = 1; // Appear under moveable non-heroes
}
