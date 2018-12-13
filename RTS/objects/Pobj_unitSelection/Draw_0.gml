//Draw selection
if rightPressed {
	var mouseX = mouse_x;
	var mouseY = mouse_y;
	draw_sprite(spr_target, 0, mouseX, mouseY);
	if x = mouseX && y = mouseY {
		draw_sprite(void, 0, mouseX, mouseY);
	}
}
if (selected = true) {
	draw_set_alpha(0.25);
	draw_circle_color(x, y, 15, c_lime, c_lime, true);
}

draw_self();