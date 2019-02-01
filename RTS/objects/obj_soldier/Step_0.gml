event_inherited();

//Var
var this_worker = instance_nearest(x, y, obj_worker);
var this_soldier = instance_nearest(x, y, obj_soldier);
var this_enemy = instance_nearest(x, y, obj_enemy);
var this = instance_nearest(x, y, Pobj_allyUnit);

//Move animation
if (unit_move)
{
	sprite_index = spr_soldier_move;
}
else
{
	sprite_index = spr_soldier;
}

//Attacks
if instance_exists(this_enemy) && (point_distance(x, y, this_enemy.x, this_enemy.y) < 20)
{
	this_enemy.hp -= 2.00;
}

//Death
if hp <= 0 instance_destroy(this);