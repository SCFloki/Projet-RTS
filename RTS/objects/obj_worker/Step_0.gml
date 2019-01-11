event_inherited();

//Go to work
if (place_meeting(x, y, obj_goldMine) && !unit_move)
{
	instance_destroy(this_worker);
	obj_goldMine.gold_mine_worker += 1;
}