// Script that checks and handles a collision with a grunt
function check_grunt_collision(_victim, _victim_snd) {
	var _a_hit_grunt = instance_place(x, y, obj_grunt);
	if (_a_hit_grunt != noone) {
		audio_play_sound_no_loop(_victim_snd);

		// If victim is a bullet, add a game score bonus, create
		// blood splatter, and destroy both the bullet and the grunt
		if (_victim.object_index == obj_bullet) {
			obj_game_manager.game_score += obj_grunt.points_worth;
			spawn_bonus(x, y, obj_grunt.points_worth);
			
			spawn_blood_splatter(irandom_range(5, 10), max_splatter_radius, 0);
			instance_destroy(_victim);
			instance_destroy(_a_hit_grunt);

		// If victim is hero, hero gets locked up and loses a life
		} else if (_victim.object_index == obj_hero) {
			instance_create_depth(x, y, -1, obj_jail);
			obj_game_manager.hero_lives--;
			obj_game_manager.game_state.life_lost = true;
		}
	}
}
