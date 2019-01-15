//Draw unit selection
if selected  {
	draw_circle_color(x, y, 15, c_lime, c_lime, true);
}

draw_self();

//Draw healthbar
if (selected) //&& (hp < maxHp)
{
	draw_healthbar(x-16, y-20, x+16, y-14, (hp/maxHp)*100, c_black, c_red, c_green, 0, true, true);
}