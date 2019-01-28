unit_move = false;
hp = 25;
this = instance_nearest(x, y, obj_enemy);
this_PobjUnit = instance_nearest(x, y, Pobj_unitSelection);
this_worker = instance_nearest(x, y, obj_worker);
this_soldier = instance_nearest(x, y, obj_soldier);
kill_target = false;