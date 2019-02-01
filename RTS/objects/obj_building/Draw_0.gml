//Get default variable
event_inherited();

//Draw cooldown
if (display_spawn_time_soldier = true)
{
	draw_text(this_building.x - 15, this_building.y - 42, spawn_time_soldier/60);
	draw_sprite(spr_barre_progression, spawn_time_soldier/4, this_building.x, this_building.y-50);
}

if (display_spawn_time_worker = true)
{
	draw_text(this_building.x - 15, this_building.y - 42, spawn_time_worker/60);
	draw_sprite(spr_barre_progression, spawn_time_worker/4, this_building.x, this_building.y-50);
}

draw_self();