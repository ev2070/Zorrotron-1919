// Script that updates the overlay color of the standby room periodically
function cycle_standby_color() {
	color_counter++;
	if (color_counter >= COLOR_CHANGE_FREQ) {
        curr_overlay_color = get_random_color();
        color_counter = 0;
    }
}
