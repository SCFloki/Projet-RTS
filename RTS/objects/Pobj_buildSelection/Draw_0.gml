//Draw selection
if (selected = true) {
	draw_set_alpha(0.5);
	draw_circle_color(x, y, 15, c_blue, c_blue, true);
}
draw_self();