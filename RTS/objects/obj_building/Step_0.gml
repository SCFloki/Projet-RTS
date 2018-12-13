scr_inputs();

//Create unit
if (selected = true) && (cooldown == 0) && (appear) && (spawn_time != 0) {
			
	trigger_spawn_time = true;			//Set cooldown to spawn unit at true
	display_spawn_time = true;			//Display time
}
	
//Cooldown to spawn unit
if (spawn_time = 0) {
		
	instance_create_layer(obj_building.x + 40, obj_building.y, 0, obj_soldier);
	trigger_spawn_time = false;
	display_spawn_time = false;
	spawn_time = 60;
	/*cooldown = 60;					//If we want a second cooldown */
}

/* if (cooldown != 0) cooldown--;		//If we want a second cooldown */

if (trigger_spawn_time = true) spawn_time--;
