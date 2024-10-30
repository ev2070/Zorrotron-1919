// Script that checks and handles a collision with an electrode
function check_electrode_collision(_victim, _victim_snd) {
	var _a_hit_electrode = instance_place(x, y, obj_electrode);
	if (_a_hit_electrode != noone) {
		// Play sound(s)
		audio_play_sound_no_loop(snd_explosion);
		if (_victim_snd != -1) {
			audio_play_sound_no_loop(_victim_snd);
		}
		
		// Spawn explosion
		instance_create_depth(x, y, -1, obj_explosion);
		
		// If victim is hero, update lives
		// Otherwise, destroy victim and electrode
		if (_victim.object_index == obj_hero) {
			obj_game_manager.hero_lives--;
			obj_game_manager.game_state.life_lost = true;
		} else {
			instance_destroy(_victim);
			instance_destroy(_a_hit_electrode);
		}
	}
}
