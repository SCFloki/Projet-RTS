//Draw unit selection
if this.selected  {
	draw_set_alpha(0.5);
	draw_circle_color(x, y, 15, c_lime, c_lime, true);
}

draw_self();