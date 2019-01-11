scr_inputs();

//Create movement target
if (this.selected && rightPressed && !instance_exists(obj_target))
{
	this.unit_move = true;
	
	//Set the different state of the order
	this.order_in_progress = true;
	this.no_order = false;
	this.one_order = true;
	
	//Coordinated of the first order
	this.first_target_hor = mouse_x;
	this.first_target_ver = mouse_y;
	
	//Create movement target
	instance_create_depth(first_order_hor, first_order_ver, 0, obj_target);
	
}

//Go to the movement target
if (instance_exists(obj_target) && this.order_in_progress)
{
    if(this.unit_move)
    {
        this.direction = point_direction(this.x, this.y, obj_target.x, obj_target.y);
        this.speed = 2;
        this.unit_move = true;
    }
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