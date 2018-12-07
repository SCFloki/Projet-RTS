scr_inputs();

if (cooldown == 0)
{
	if (appear)
	{	
		if (spawn_time != 0)
		{
			trigger_spawn_time = true;
			display_spawn_time = true;
		}
	}
	
	if (spawn_time = 0)
	{
		instance_create_layer(obj_building.x+test,obj_building.y+0,0,obj_soldier);
		test += 20;
		cooldown = 240;
		trigger_spawn_time = false;
		display_spawn_time = false;
		spawn_time = 180;
	}
}

if (cooldown != 0)
{
	cooldown--;
}

if (trigger_spawn_time = true)
	{
		spawn_time--;
	}