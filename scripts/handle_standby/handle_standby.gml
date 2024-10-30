// Script that has the standby_timer countdown and reset itself &
// perform the appropriate given transition to move on when time is up
function handle_standby(_callback) {
	if (standby_timer >= 0) {
		standby_timer--;
	} else {
		standby_timer = standby_duration;
		_callback();
	}
}
