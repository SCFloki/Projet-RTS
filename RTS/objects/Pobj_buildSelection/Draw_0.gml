//Draw building selection
if (selected) {
	draw_set_alpha(0.5);
	draw_circle_color(x, y, 15, c_red, c_red, true);
}

draw_self();