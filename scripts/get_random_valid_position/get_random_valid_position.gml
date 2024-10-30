// Script that returns a random valid position as an array [x-pos, y-pos],
// avoiding a given no man's land around the hero
function get_random_valid_position(_radius) {
	var _instance_x;
	var _instance_y;
	
	do {
		_instance_x = random_range(_radius, room_width-_radius);
		_instance_y = random_range(_radius, room_height-_radius);
	} until (point_distance(_instance_x, _instance_y,
				obj_hero.x, obj_hero.y) > _radius);
    
	return [_instance_x, _instance_y]; // Return an array with x and y
}
