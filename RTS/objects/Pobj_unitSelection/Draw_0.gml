//Draw unit selection
if selected  {
	draw_circle_color(x, y, 15, c_lime, c_lime, true);
}
if this.selected && this.order_in_progress && this.count_target != -1
{
	draw_sprite(spr_target, 0, this.target_hor[this.count_target],  this.target_ver[this.count_target])
}

draw_text(100, 50, obj_soldier.count_target);
draw_text(100, 75, obj_worker.count_target);

draw_self();

//Draw healthbar
if (selected) //&& (hp < maxHp)
{
	draw_healthbar(x-16, y-20, x+16, y-14, (hp/maxHp)*100, c_black, c_red, c_green, 0, true, true);
}