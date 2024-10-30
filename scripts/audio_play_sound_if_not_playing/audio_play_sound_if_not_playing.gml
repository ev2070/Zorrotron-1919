// Script that plays a given sound if it's not already playing
function audio_play_sound_if_not_playing(_snd, _loop) {
	if (!audio_is_playing(_snd) && _loop) {
		audio_play_sound_loop(_snd);
	} else if (!audio_is_playing(_snd) && !_loop) {
		audio_play_sound_no_loop(_snd);
	}
}
