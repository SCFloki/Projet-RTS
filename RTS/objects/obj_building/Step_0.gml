scr_inputs();

//Create unit
if ((selected = true) && (cooldown == 0)) {
	if ((appearS) && (spawn_time_soldier != 0)) {
		trigger_spawn_time_soldier = true;			//Set cooldown to spawn soldier at true
		display_spawn_time_soldier = true;			//Display time
	}
	if ((appearW) && (spawn_time_worker != 0)) {
		trigger_spawn_time_worker = true;
		display_spawn_time_worker = true;
	}
}

//Cooldown to spawn unit
if (spawn_time_soldier = 0) {
	
	decalage += 20;
	instance_create_layer(obj_building.x + decalage, obj_building.y, 0, obj_soldier);
	trigger_spawn_time_soldier = false;
	display_spawn_time_soldier = false;
	spawn_time_soldier = 60;
	/*cooldown = 60;					//If we want a second cooldown */
}

if (spawn_time_worker = 0) {
	decalage += 20;
	instance_create_layer(obj_building.x + decalage, obj_building.y, 0, obj_worker);
	trigger_spawn_time_worker = false;
	display_spawn_time_worker = false;
	spawn_time_worker = 60;
}

/* if (cooldown != 0) cooldown--;		//If we want a second cooldown */

if (trigger_spawn_time_soldier = true) spawn_time_soldier--;
if (trigger_spawn_time_worker = true) spawn_time_worker--;
