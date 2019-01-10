//Draw selection
if this.selected  {
	draw_set_alpha(0.25);
	draw_circle_color(x, y, 15, c_lime, c_lime, true);
	
	if rightPressed {
		instance_create_depth(mouse_x, mouse_y, obj_target)
		/*var mouseX = mouse_x;
		var mouseY = mouse_y;
		draw_sprite(spr_target, 0, mouseX, mouseY);
		if x = mouseX && y = mouseY {
			draw_sprite(void, 0, mouseX, mouseY); */
		}
	}
}

draw_set_alpha(1);
draw_set_color(c_white);
draw_text(10, 20, this.unitMove);

draw_self();