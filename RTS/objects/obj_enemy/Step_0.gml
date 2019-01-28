//Move animation
if (unit_move) sprite_index = spr_enemy_move;
else sprite_index = spr_enemy;

//Move toward
if point_distance(x, y, Pobj_unitSelection.x, Pobj_unitSelection.y) < 200 
{
	move_towards_point(Pobj_unitSelection.x, Pobj_unitSelection.y, 1.5)
	unit_move = true;
}
else unit_move = false;

//Speed
if (unit_move) speed = 1.5;

else speed = 0;

//Attacks
if (instance_exists(Pobj_unitSelection)) && (point_distance(x, y, this_PobjUnit.x, this_PobjUnit.y) < 20)
{
	kill_target = true;	
}

if this_PobjUnit.hp <= 0
{
kill_target = false;
}
if kill_target
{
	this_PobjUnit.hp -= 1.25;
}




