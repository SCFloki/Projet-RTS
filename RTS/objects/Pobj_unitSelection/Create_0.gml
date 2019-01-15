//State of unit
selected = false;
unit_move = false;

//State of order
no_order = true;
one_order = false;
more_order = false;
order_in_progress = false;

//Target position
show_target = false;
count_target = 0;
target_hor[0] = -1;
target_hor[1] = -1;
target_hor[2] = -1;
target_hor[3] = -1;
target_hor[4] = -1;
target_ver[0] = -1;
target_ver[1] = -1;
target_ver[2] = -1;
target_ver[3] = -1;
target_ver[4] = -1;

//Get nearest object
this_target = instance_nearest(x, y, obj_target);
this_worker = instance_nearest(x, y, obj_worker);
this = instance_nearest(x, y, Pobj_unitSelection);

//Stats
maxHp = 100;
hp = maxHp;