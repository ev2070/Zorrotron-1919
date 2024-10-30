// Script that spawns a bonus object at a given
// location and assigns it a given value
function spawn_bonus(_x, _y, _val) {
	var _bonus = instance_create_depth(_x, _y, -1, obj_bonus);
	_bonus.value = _val;
}
