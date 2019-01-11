scr_inputs();

//Cursor sprite
friction = 0;
x = mouse_x;
y = mouse_y;

//Game restart
if keyboard_check_pressed(ord("R")) game_restart();