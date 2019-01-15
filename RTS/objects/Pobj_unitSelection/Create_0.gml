//State of unit
selected = false;
unit_move = false;

//State of order
no_order = true;
one_order = false;
more_order = false;
order_in_progress = false;

//Target position
first_target_hor = -1;
first_target_ver = -1;

//Get nearest object
this_target = instance_nearest(x, y, obj_target);
this_worker = instance_nearest(x, y, obj_worker);
this = instance_nearest(x, y, Pobj_unitSelection);

//Stats
maxHp = 100;
hp = maxHp;