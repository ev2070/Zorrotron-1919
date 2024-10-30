// Script that enables a moveable non-hero to determine the position of its target
function set_target_position(_moveable_non_hero) {
    // Check the object type of the moveable non-hero instance
    var _is_grunt = (_moveable_non_hero.object_index == obj_grunt);
    var _is_hulk = (_moveable_non_hero.object_index == obj_hulk);
    var _is_human = (_moveable_non_hero.object_index == obj_human);

    if (_is_grunt || _is_hulk) {
        // Faster moves will be made if a QTE is present
        if (instance_number(obj_quick_time_event) == 1) {
			slide_spd = DEFAULT_SLIDE_SPEED * 2.15;
            timer /= 2.5; // This is reset in wait_and_prep_next_step()
		// Otherwise, reset slide speed of grunt / hulk
        } else {
			if (slide_spd != DEFAULT_SLIDE_SPEED) {
				slide_spd = DEFAULT_SLIDE_SPEED;
			}
		}

        spd = get_random_elem(speeds);

        if (_is_hulk) { // Hulk will try to find nearest human
            nearest_human = instance_nearest(x, y, obj_human);
        }

        // Grunt will chase hero; hulk will chase hero, too, if no humans left
        if (_is_grunt || (_is_hulk && nearest_human == noone)) {
            dir = point_direction(x, y, obj_hero.x, obj_hero.y);
        // Hulk will chase nearest human if present
        } else if (_is_hulk && nearest_human != noone) {
            dir = point_direction(x, y, nearest_human.x, nearest_human.y);
        }

        // If distance is short, force direction change
        var _distance_threshold = 5;

        // Target's position
        var _target_x_new = x + lengthdir_x(spd, dir);
        var _target_y_new = y + lengthdir_y(spd, dir);
        
        // If close to target and aligning on the same line,
		// switch direction and recalculate target's new position
        if ((abs(_target_x_new - target_x) < _distance_threshold && hv == 0) || 
            (abs(_target_y_new - target_y) < _distance_threshold && hv == 1)) {
            hv = 1 - hv;
            _target_x_new = x + lengthdir_x(spd, dir);
            _target_y_new = y + lengthdir_y(spd, dir);
        }
		
		if (_is_grunt) { // Move orthogonally and/or diagonally
			target_x = _target_x_new;
			target_y = _target_y_new;
		} else if (_is_hulk) { // Move horizontally (0) or vertically (1)
			if (hv == 0) { target_x = _target_x_new; }
			else { target_y = _target_y_new; }
		}

    } else if (_is_human) {
        // Human will move towards a random spot in the room
		if (dir_x == 0) { // Left
			target_x = x - irandom(x - left_bound);
		} else if (dir_x == 1) { // Right
			target_x = x + irandom(right_bound - x);
		} else if (dir_x == 2) { // Nowhere horizontally
			target_x = x;
		}
		if (dir_y == 0) { // Up
			target_y = y - irandom(y - upper_bound);
		} else if (dir_y == 1) { // Down
			target_y = y + irandom(lower_bound - y);
		} else if (dir_y == 2) { // Nowhere vertically
			target_y = y;
		}
    }

	// Now that target position is set, start moving
    moving = true;
}
