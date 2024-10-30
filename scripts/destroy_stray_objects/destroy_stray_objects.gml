// Script that destroys all stray objects upon losing a life
// Avoids showing these objects if player continues playing wave
function destroy_stray_objects() {
	destroy_non_hero(obj_bullet, instance_number(obj_bullet));
	destroy_non_hero(obj_explosion, instance_number(obj_explosion));
	destroy_non_hero(obj_blood, instance_number(obj_blood));
	destroy_non_hero(obj_bonus, instance_number(obj_bonus));
}
