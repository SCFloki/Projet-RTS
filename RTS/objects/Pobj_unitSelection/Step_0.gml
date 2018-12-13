
if (selected) && rightPressed {
	
	unitMove = true;
	
	target_x = mouse_x;
	target_y = mouse_y;
}

	if (unitMove == true) {
	//motion_add(point_direction(x, y, target_x, target_y), moveSpd);
	move_towards_point(target_x, target_y, 3);
	
	if (speed > moveSpd) speed = moveSpd;
	
	if (x = target_x && y = target_y) {
		unitMove = false;
		speed = 0;
	}
}