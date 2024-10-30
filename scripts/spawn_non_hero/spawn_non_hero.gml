// Script that spawns a given number of obstacle/enemy objects
function spawn_non_hero(_obj, _num) {
	for (var _i = 0; _i < _num; _i++) {
		var _pos = get_random_valid_position(NO_MANS_LAND);
		instance_create_depth(_pos[0], _pos[1], 0, _obj);
	}
}
