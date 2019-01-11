scr_inputs();
if (this.selected && rightPressed) {
	this.unitMove = true;
	instance_create_depth(mouse_x, mouse_y, 0, obj_target)
	if has_a_target = false {
	this_target = instance_nearest(x, y, obj_target)
	has_a_target = true;
	}
}

	if (this.unitMove == true) {
	move_towards_point(this_target.x, this_target.y, 3);
	
	if (this.x == this_target.x && this.y == this_target.y) {
		instance_destroy(this_target);
		has_a_target = false;
		this.speed = 0;
		this.unitMove = false;
	}
}