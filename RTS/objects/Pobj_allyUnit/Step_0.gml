scr_inputs();

//Create movement target
if (this.selected && rightPressed)
{	
	if (this.order_in_progress)
	{
	instance_destroy(instance_nearest(this.x, this.y, obj_target));
	this.count_target--;
	}
	
	//Set the different state of the order
	this.order_in_progress = true;
	this.no_order = false;
	this.one_order = true;

	//Coordinated of the first order
	this.count_target++;
	this.target_hor[this.count_target] = mouse_x;
	this.target_ver[this.count_target] = mouse_y;
	
	//Create movement target
	instance_create_depth(this.target_hor[this.count_target], this.target_ver[this.count_target], 0, obj_target);
}

//Show order when selected
if (this.selected && this.order_in_progress)
{
	this.show_target = true;
}

//Go to the movement target
if (instance_exists(obj_target) && this.order_in_progress)
{
	this.unit_move = true;
	this.direction = point_direction(this.x, this.y, this.target_hor[this.count_target], this.target_ver[this.count_target]);
	this.speed = 2;

}

//Stop movement
if (this.count_target != -1) && point_distance(this.x, this.y, this.target_hor[this.count_target], this.target_ver[this.count_target]) < 1
{
	x = this.target_hor[this.count_target];
	y = this.target_ver[this.count_target];
    this.speed = 0;
    this.unit_move = false;
	this.order_in_progress = false;
	this.count_target--;
	instance_destroy(instance_nearest(this.x, this.y, obj_target));
}

//Situation if more than one order (Shift+Click)
if (this.selected && this.one_order && rightPressed)
{
	this.one_order = false;
	this.more_order = true;
}

//Reset order
if (!instance_exists(obj_target) && order_in_progress)
{
	order_in_progress = false;
}



