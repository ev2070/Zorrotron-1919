// Script that destroys a given number of obstacle/enemy objects
function destroy_non_hero(_obj, _num) {
	for (var _i = _num - 1; _i >= 0; _i--) {
		instance_destroy(instance_find(_obj, _i));
	}
}
