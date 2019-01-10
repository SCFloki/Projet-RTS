friction = 0;
x = mouse_x;
y = mouse_y;
scr_inputs();

if (rightPressed) && !instance_exists(obj_target) {
	target_x = x;
	target_y = y;
	instance_create_layer(x, y, "Instances", obj_target);
}