//Draw selection
if selected  {
	draw_set_alpha(0.25);
	draw_circle_color(x, y, 15, c_lime, c_lime, true);
	
	if order_in_progress && one_order {
		draw_sprite(spr_target, 0, first_target_hor, first_target_ver);
		if x = first_target_hor && y = first_target_ver {
			draw_sprite(void, 0, first_target_hor, first_target_ver);
			order_in_progress = false;
		}
	}
}
draw_set_alpha(1);
draw_set_color(c_white);
draw_text(10, 20, this.unitMove);

draw_text(10, 40, instance_exists(obj_target));

draw_self();