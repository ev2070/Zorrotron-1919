// obj_fadeable Step

// If game is not paused, have object gradually fade out
if (!obj_game_manager.game_state.pause) {
    image_alpha -= 1 / fade_duration;

	// If object is not visible anymore, self destruct
    if (image_alpha <= 0) {
        instance_destroy();
    }
}
