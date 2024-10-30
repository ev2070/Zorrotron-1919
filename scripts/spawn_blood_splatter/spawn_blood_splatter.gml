// Script that spawns a blood splatter (aka many blood drops)
function spawn_blood_splatter(_num_blood, _max_splatter_radius,
								_splatter_is_large) {
	for (var _i = 0; _i < _num_blood; _i++) {
		var _blood_dist = irandom(_max_splatter_radius);
		var _blood_x = lengthdir_x(_blood_dist, random(360));
		var _blood_y = lengthdir_y(_blood_dist, random(360));
		var _blood_drop =
				instance_create_depth(x+_blood_x, y+_blood_y, -2, obj_blood);
		
		if (_splatter_is_large) { // Make blood drop bigger
			_blood_drop.radius = random_range(10, 20);
		}
	}
}
