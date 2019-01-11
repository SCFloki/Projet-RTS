selected = false;
order_in_progress = false;
unit_move = false;
has_a_target = false;

no_order = true;
one_order = false;
more_order = false;

first_target_hor = -1;
first_target_ver = -1;

this_target = instance_nearest(x, y, obj_target);
this = instance_nearest(x, y, Pobj_unitSelection);