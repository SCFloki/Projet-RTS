scr_inputs();

if (gold_mine_worker >  0)
{
	income_gold_mine += 0.005 * gold_mine_worker;
	if (selected && leave)
	{
		gold_mine_worker -= 1;
		instance_create_depth(x, y + 25, 0, obj_worker);
	}
}