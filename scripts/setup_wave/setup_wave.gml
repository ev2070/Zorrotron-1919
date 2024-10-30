// Script that sets up a wave given its wave number
function setup_wave(_wave) {
    game_state.pause = true; // Pause immediately for viewing
    curr_ammo = MAX_AMMO;

    // Game difficulty increases as player progresses through game
    var _difficulty_scale = _wave/FINAL_WAVE; // Scaling factor from 0 to 1
	
    var _num_electrodes = irandom_range(1, 5) + round(_difficulty_scale*10);
    var _num_grunts = irandom_range(5, 10) + round(_difficulty_scale*5);
    var _num_hulks = (_wave == 1) ? 0 :
						irandom_range(1, 2) + round(_difficulty_scale*3);
    var _num_humans = irandom_range(1, 3) + round(_difficulty_scale*5);
	
    // Spawn enemies based on scaled values from difficulty
    spawn_non_hero(obj_electrode, _num_electrodes);
    spawn_non_hero(obj_grunt, _num_grunts);
    spawn_non_hero(obj_human, _num_humans);
	if (_num_hulks > 0) { spawn_non_hero(obj_hulk, _num_hulks); }

    reset_hero_orientation();
    game_state.wave_setup = true;
    game_state.viewing = true;
    obj_game_manager.humans_saved = 0;
}
