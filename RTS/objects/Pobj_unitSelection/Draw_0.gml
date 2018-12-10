//Draw selection
if (selected = true) {
	draw_set_alpha(0.25);
	draw_circle_color(x, y, 15, c_lime, c_lime, true);
}
draw_self();