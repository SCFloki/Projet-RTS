//Mouse Control
leftPressed = mouse_check_button_pressed(mb_left);
leftReleased = mouse_check_button_released(mb_left);
leftClick = mouse_check_button(mb_left);

rightPressed = mouse_check_button_pressed(mb_right);
rightReleased = mouse_check_button_released(mb_right);
rightClick = mouse_check_button(mb_right);

//Order Control
patrol = keyboard_check_pressed(ord("P"));
appear = keyboard_check_pressed(ord("T"));


//Cam move
cam_move_up = keyboard_check(vk_up);
cam_move_down = keyboard_check(vk_down);
cam_move_left = keyboard_check(vk_left);
cam_move_right = keyboard_check(vk_right);