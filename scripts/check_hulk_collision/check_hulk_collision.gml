// Script that checks and handles a collision with a hulk
function check_hulk_collision(_victim, _victim_snd) {
	var _a_hit_hulk = instance_place(x, y, obj_hulk);
	if (_a_hit_hulk != noone) {
		audio_play_sound_no_loop(_victim_snd);

		// If victim is a bullet, destroy bullet and slow hulk down
		if (_victim.object_index == obj_bullet) {
			_a_hit_hulk.spd *= 0.95;
			instance_destroy(_victim);

		// If victim is hero, create blood splatter; hero loses a life
		} else if (_victim.object_index == obj_hero) {
			spawn_blood_splatter(irandom_range(25, 50),
								max_splatter_radius, 1);
			obj_game_manager.hero_lives--;
			obj_game_manager.game_state.life_lost = true;
		}
	}
}
