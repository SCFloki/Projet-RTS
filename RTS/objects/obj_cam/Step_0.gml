scr_inputs();

if (cam_move_width = true)
{
	if (cam_move_right)
	{
		x += 5;
	}

	if (cam_move_left)
	{
		x -= 5;
	}
}

if (cam_move_height = true)
{
	if (cam_move_up)
	{
		y -= 5;
	}

	if (cam_move_down)
	{
		y += 5;
	}
}

y += (obj_cam.y - y) * 0.1;
x += (obj_cam.x - x) * 0.1;



if ((obj_cam.x > x1) && (obj_cam.x < x2))
{
	cam_move_width = true;
}
else if (obj_cam.x <= x1)
{
	cam_move_width = false;
	if (cam_move_right)
	{
		cam_move_width = true;
	}
}
else if (obj_cam.x >= x2)
{
	cam_move_width = false;
	if (cam_move_left)
	{
		cam_move_width = true;
	}
}


if ((obj_cam.y > y1) && (obj_cam.y < y2))
{
	cam_move_height = true;
}
else if (obj_cam.y <= y1)
{
	cam_move_height = false;
	if (cam_move_down)
	{
		cam_move_height = true;
	}
}
else if (obj_cam.y >= y2)
{
	cam_move_height = false;
	if (cam_move_up)
	{
		cam_move_height = true;
	}
}