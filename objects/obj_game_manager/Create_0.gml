// obj_game_manager Create

#macro COLOR_CHANGE_FREQ 30 // Change color every 30 frames (0.5 second)
#macro DEFAULT_AMMO 5 // Default amount of ammo hero can have reloaded
#macro DEFAULT_SLIDE_SPEED 0.2 // Default speed a moveable non-hero will slide
#macro FINAL_WAVE 5 // The last wave per game
#macro GAME_SPEED game_get_speed(gamespeed_fps) // Replaces `room_speed`
#macro MAX_AMMO 20 // Maximum number of bullets hero can have
#macro MAX_LIVES 3 // Maximum number of lives hero has per game
#macro NO_MANS_LAND 150 // Prevents hazards from spawning near hero

randomize(); // Seed the random number generator
draw_set_font(fnt_small_bold_pixel_7); // Set pixelated font
audio_play_sound_if_not_playing(snd_theme, 1); // Play game theme
initialize_global_variables();

// Initial game state variables
wave = 0;
game_score = 0;
high_score = 0;
humans_saved = 0;
curr_ammo = MAX_AMMO;
hero_lives = MAX_LIVES;

// For transitions via standby room
standby_duration = 1.5 * GAME_SPEED;
standby_timer = standby_duration;

// For life lost transition
life_lost_duration = 1.5 * GAME_SPEED;
life_lost_timer = life_lost_duration;

// For viewing wave pre-gameplay
viewing_duration = 2 * GAME_SPEED;
viewing_timer = viewing_duration;
	
// For transitioning color
curr_overlay_color = get_random_color();
color_counter = 0;

// Visually represent the lives and ammo the hero has
draw_hud_elements(150, 50, MAX_LIVES, obj_life);
draw_hud_elements(room_width/1.7, 25, MAX_AMMO, obj_ammo);

// Strings shown in splash screen
game_title = "ZORROTRON: 1919";
headline = "SAVE THE PEOPLE OF THE LAND!\r\n" +
			"A ROBOTRON: 2084 REMAKE";
high_score_text = "HIGH SCORE";

zorro = "EL ZORRO";
civilian = "CIVILIAN";
flash_bomb = "FLASH BOMB";
official = "OFFICIAL";
carriage = "CARRIAGE";

controls_text =
	"WASD to move\r\n" +
	"IJKL to shoot\r\n" +
	"O to reload\r\n\r\n" +
	"SPACE to pause\r\n" +
	"BACKSPACE to quit\r\n" +
	"ENTER to start or restart\r\n";

// Strings shown in standby screen
you_won_text = "YOU WON";
game_over_text = "GAME OVER";
back_to_wave_one = "BACK TO WAVE 1";

// Game State / Booleans
game_state = {
	pause: false,
	viewing: false,
	you_won: false,
	you_lost: false,
	life_lost: false,
	restarting: false,
	wave_setup: false,
	high_score_beat: false,
	standby_snd_played: false,
};
