event_inherited();

//Var
var this_worker = instance_nearest(x, y, obj_worker);
var this_soldier = instance_nearest(x, y, obj_soldier);
var this_enemy = instance_nearest(x, y, obj_enemy);

//Move animation
if (unit_move)
{
	sprite_index = spr_worker_move;
}
else
{
	sprite_index = spr_worker;
}
//Go to work
if (place_meeting(x, y, obj_goldMine) && !unit_move)
{
	instance_destroy(this_worker);
	obj_goldMine.gold_mine_worker += 1;
}

//Death
if hp <= 0 instance_destroy(this);