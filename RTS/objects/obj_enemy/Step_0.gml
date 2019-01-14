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
if point_distance(x, y, Pobj_unitSelection.x, Pobj_unitSelection.y) < 20 
{
	this_worker.hp -= 1.25;
}

//Interactions
if hp = 0 instance_destroy(this);



