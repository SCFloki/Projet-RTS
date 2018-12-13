friction = 0;
x = mouse_x;
y = mouse_y;
scr_inputs();

if (rightClick) {
	instance_create_layer(x, y, "Instances", obj_target);
}