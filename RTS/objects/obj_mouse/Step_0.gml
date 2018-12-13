friction = 0;
x = mouse_x;
y = mouse_y;
scr_inputs();

if (rightPressed) {
	target_x = x;
	target_y = y;
	instance_create_layer(x, y, "Instances", obj_target);
}