draw_self();

//Draw healthbar
if (hp < maxHp)
{
	draw_healthbar(x-16, y-20, x+16, y-14, (hp/maxHp)*100, c_black, c_red, c_green, 0, true, true);
}