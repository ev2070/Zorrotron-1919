// Script that resets the hand of the QTE, if the QTE was present
function reset_qte() {
	var _stray_qte = instance_find(obj_quick_time_event, 0);
	if (_stray_qte != noone) {
		_stray_qte.elapsed_x2 = _stray_qte.elapsed_x1;
	}
}
