//Draw selection box
if (px != -1 && py != -1) {
	draw_set_alpha(0.25);
	draw_set_color(c_lime);
	draw_rectangle(px, py, mouse_x, mouse_y,true);
	draw_set_alpha(0.1);
	draw_set_color(c_lime);
	draw_rectangle(px, py, mouse_x, mouse_y,false);
	draw_set_alpha(1);
}

draw_text(10, 20, px);
draw_text(10, 40, py);

draw_self();