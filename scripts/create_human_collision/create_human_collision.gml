// Script that checks and handles a collision with a human
function check_human_collision(_collider, _snd1, _snd2) {
	var _a_hit_human = instance_place(x, y, obj_human);
	if (_a_hit_human != noone) {
		// Play sound(s)
		audio_play_sound_no_loop(_snd1);
		if (_snd2 != -1) {
			audio_play_sound_no_loop(_snd2);
		}

		// If collider is hero, add game score bonus and increase ammo
		if (_collider.object_index == obj_hero) {
			// Ensure that global variable is defined and that
			// bonus from saving humans does not exceed 5000 points
			obj_game_manager.humans_saved++;
			if (real(obj_game_manager.humans_saved)) {
				obj_game_manager.humans_saved =
						clamp(obj_game_manager.humans_saved, 0, 5);
			}
			
			var _savior_bonus = obj_game_manager.humans_saved *
								obj_human.points_worth;
			obj_game_manager.game_score += _savior_bonus;
			spawn_bonus(x, y, _savior_bonus);

			var _gifted_ammo = min(DEFAULT_AMMO * 2,
								MAX_AMMO - obj_game_manager.curr_ammo);
			obj_game_manager.curr_ammo += _gifted_ammo;
			spawn_bonus(x, y+20, _gifted_ammo);
			ammo_timer = ammo_duration; // Reset since just reloaded

		// If collider is a hulk, create blood splatter
		} else if (_collider.object_index == obj_hulk) {
			spawn_blood_splatter(irandom_range(5, 10), max_splatter_radius, 0);
		}

		instance_destroy(_a_hit_human); // Remove human from wave
	}
}
