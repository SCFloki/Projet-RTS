if (selected) && instance_exists(obj_target) {
	motion_add(point_direction(x, y, obj_target.x, obj_target.y), moveSpd);
	if place_meeting(x, y, obj_target) {
		speed = 0;
		instance_destroy(obj_target);
	}
}