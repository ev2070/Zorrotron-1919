// Script that keeps an object within the bounds of the room
function keep_in_bounds() {
	x = clamp(x, left_bound, right_bound);
	y = clamp(y, upper_bound, lower_bound);
}
