//Draw building selection
if (selected) {
	draw_set_alpha(1);
	draw_circle_color(x, y, 15, c_yellow, c_yellow, true);
}

draw_set_color(c_white);
draw_text(10, 5, "Gold Income :");
draw_text(10, 20, income_gold_mine);

draw_self();