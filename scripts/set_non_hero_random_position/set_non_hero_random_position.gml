// Script that gives each instance of a given non-hero a new random position
function set_non_hero_random_position(_obj) {
	with (_obj) {
		var _pos = get_random_valid_position(NO_MANS_LAND);
		x = _pos[0];
		y = _pos[1];
	}
}
