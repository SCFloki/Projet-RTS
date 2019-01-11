scr_inputs();

//Create movement target
if (selected && rightPressed)
{
	unit_move = true;
	order_in_progress = true;
	one_order = true;
	
	first_target_hor = mouse_x;
	first_target_ver = mouse_y;
	
	var first_order_hor = mouse_x;
	var first_order_ver = mouse_y;
	
	instance_create_depth(first_order_hor, first_order_ver, 0, obj_target);
	
}

if (selected && one_order && rightPressed)
{
	one_order = false;
	more_order = true;
}

//Go to the movement target and adding the state order_in_progress 
if (instance_exists(obj_target) && order_in_progress)
{
    if(!this.unitMove)
    {
        this.direction = point_direction(this.x, this.y, obj_target.x, obj_target.y);
        this.speed = 2;
        this.unitMove = true;
    }
}

if (place_meeting(this.x, this.y, obj_target)) 
{
    this.speed = 0;
    this.unitMove = false;
	instance_destroy(obj_target);
}