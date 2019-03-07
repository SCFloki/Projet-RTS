//Var
var this = instance_nearest(x, y, obj_enemy);
var this_PobjUnit = instance_nearest(x, y, Pobj_allyUnit);
var this_worker = instance_nearest(x, y, obj_worker);
var this_soldier = instance_nearest(x, y, obj_soldier);

//Move animation
if (unit_move) sprite_index = spr_enemy_move;
else sprite_index = spr_enemy;

//Move toward
if instance_exists(Pobj_allyUnit) && point_distance(x, y, this_PobjUnit.x, this_PobjUnit.y) < 200 
{
	move_towards_point(this_PobjUnit.x, this_PobjUnit.y, 1.5)
	unit_move = true;
}
else unit_move = false;

//Speed
if (unit_move) speed = 1.5;

else speed = 0;

//Attacks
if instance_exists(Pobj_allyUnit) && point_distance(x, y, this_PobjUnit.x, this_PobjUnit.y) < 20
{
	if (as_timerDecrease = 0)
	{
		this_PobjUnit.hp -= 20;
		as_timerDecrease = 60;
	}
}

if (as_timerDecrease != 0) as_timerDecrease --;

//Death
if hp <= 0 instance_destroy(this);





