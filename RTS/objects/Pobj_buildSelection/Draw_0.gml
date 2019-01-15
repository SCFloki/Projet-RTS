//Draw building selection
if (selected) {
	draw_set_alpha(0.5);
	draw_circle_color(x, y, 15, c_red, c_red, true);
	if instance_exists(obj_target)
	{
		draw_sprite(spr_target,1,obj_target.x, obj_target.y);
	}
}

draw_self();