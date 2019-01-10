scr_inputs();
if (this.selected && rightPressed) {
	this.unitMove = true;
	this.target_x = mouse_x;
	this.target_y = mouse_y;
}

	if (this.unitMove == true) {
	move_towards_point(this.target_x, this.target_y, 3);
	if (speed > 3) speed = 3;
	
	if (this.x == this.target_x && this.y == this.target_y) {
		move_towards_point(this.x, this.y, 0);
		this.unitMove = false;
	}
}