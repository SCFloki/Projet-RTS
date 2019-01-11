scr_inputs();

friction = 0;
x = mouse_x;
y = mouse_y;

if (rightPressed) && !instance_exists(obj_target) {
	target_x = x;
	target_y = y;
	instance_create_layer(x, y, "Instances", obj_target);
}

if keyboard_check_pressed(ord("R")) game_restart();