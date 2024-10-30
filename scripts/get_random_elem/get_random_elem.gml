// Script that picks a random element from a given array
function get_random_elem(_arr) {
	var _rand_index = irandom(array_length(_arr) - 1);
	return _arr[_rand_index];
}
