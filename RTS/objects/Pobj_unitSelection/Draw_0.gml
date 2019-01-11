//Draw selection
if this.selected  {
	draw_set_alpha(0.25);
	draw_circle_color(x, y, 15, c_lime, c_lime, true);
	
	if this.order_in_progress && this.one_order {
		draw_sprite(spr_target, 0, this.first_target_hor, this.first_target_ver);
		if x = this.first_target_hor && y = this.first_target_ver {
			draw_sprite(void, 0, this.first_target_hor, this.first_target_ver);
			this.order_in_progress = false;
		}
	}
}
draw_set_alpha(1);
draw_set_color(c_white);
draw_text(10, 20, obj_worker.unit_move);
draw_text(10, 40, instance_exists(obj_target));
draw_text(10, 60, place_meeting(x,y, obj_soldier));

draw_self();