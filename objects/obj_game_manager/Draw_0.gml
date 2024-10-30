// obj_game_manager Draw

// Show game title, scores, wave, game characters, controls,
// and colorful overlay if new high score accomplished
if (room == rm_splash) {
	if (game_state.high_score_beat) {
		draw_room_overlay(0.55, curr_overlay_color);
	}
	draw_set_font(fnt_small_bold_pixel_7_big);
	draw_centered_text_color(room_width/2, room_height/4.5, game_title, c_red);
	draw_set_font(fnt_small_bold_pixel_7);
	draw_centered_text(room_width/2, room_height/2.8, headline);
	
	draw_centered_text_color(room_width/2, room_height*0.52,
							high_score_text, c_lime);
	draw_centered_text(room_width/2, room_height*0.555, string(high_score));
	
	draw_centered_text_color(room_width/5.05, room_height*0.725,
							controls_text, #FF980A);
	
	draw_centered_text(room_width/8.5*4.8, room_height*0.725, zorro);
	draw_centered_text_color(room_width/8.5*6.15, room_height*0.725,
							civilian, c_lime);
	draw_centered_text_color(room_width/8.5*7.5, room_height*0.625,
							flash_bomb, c_red);
	draw_centered_text_color(room_width/8.5*7.5, room_height*0.725,
							official, c_red);
	draw_centered_text_color(room_width/8.5*7.5, room_height*0.825,
							carriage, c_red);
	
// Show colorful overlay
} else if (room == rm_standby) {
	if ((wave >= 0 && wave <= FINAL_WAVE) && !game_state.you_lost) {
		draw_room_overlay(0.55, curr_overlay_color);
	}
}

// Show GAME OVER
if (game_state.you_lost) {
	draw_set_font(fnt_small_bold_pixel_7_big);
	draw_centered_text_color(room_width/2, room_height/2,
							game_over_text, c_red);
	draw_set_font(fnt_small_bold_pixel_7);

// Show YOU WON
} else if (game_state.you_won) {
	draw_set_font(fnt_small_bold_pixel_7_big);
	draw_centered_text_color(room_width/2, room_height/2, you_won_text, c_lime);
	draw_set_font(fnt_small_bold_pixel_7);

// Show slightly transparent yellow screen on pause / wave view
} else if ((game_state.viewing || game_state.pause) && room == rm_gameplay) {
	draw_room_overlay(0.25, c_yellow);

// Show BACK TO WAVE 1
} else if (game_state.restarting) {
	draw_set_font(fnt_small_bold_pixel_7_big);
	draw_centered_text(room_width/2, room_height/2, back_to_wave_one);
	draw_set_font(fnt_small_bold_pixel_7);
}

// Show current game score & wave in all rooms
if (room == rm_splash || room == rm_gameplay || room == rm_standby) {
	draw_centered_text_color(room_width/18.75, room_height/30,
							game_score, c_lime);
	draw_centered_text(room_width/2.04, room_height/30, string(wave) + " WAVE");
}
