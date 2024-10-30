// obj_ammo Step

// If hero still has nth ammo, show bullet
if (obj_game_manager.curr_ammo >= ammo_num) {
	if (sprite_index != spr_bullet) {
		sprite_index = spr_bullet;
	}
// Otherwise, show missing bullet
} else {
	if (sprite_index != spr_bullet_ouline) {
		sprite_index = spr_bullet_ouline;
	}
}
