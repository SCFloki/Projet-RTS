scr_inputs();

//Create movement target
if (this.selected && rightPressed && !order_in_progress)
{	
	//Set the different state of the order
	this.order_in_progress = true;
	this.no_order = false;
	this.one_order = true;
	
	//Coordinated of the first order
	this.first_target_hor = mouse_x;
	this.first_target_ver = mouse_y;
	
	//Create movement target
	instance_destroy(obj_target);
	instance_create_depth(first_target_hor, first_target_ver, 0, obj_target);
}

//Show order when selected
if (this.selected && order_in_progress)
{
	show_target = true;
}
else
{
	show_target = false;
}

//Go to the movement target
if (instance_exists(obj_target) && this.order_in_progress)
{
	this.unit_move = true;
	this.direction = point_direction(this.x, this.y, obj_target.x, obj_target.y);
	this.speed = 2;

}

//Stop movement
if (place_meeting(this.x, this.y, obj_target)) 
{
    this.speed = 0;
    this.unit_move = false;
	instance_destroy(obj_target);
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