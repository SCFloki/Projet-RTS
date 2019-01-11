//Get default variable
event_inherited();

//Draw cooldown
if (display_spawn_time = true)
{
	draw_text(this_building.x - 15, this_building.y - 42, spawn_time/60);
	draw_sprite(spr_barre_progression, spawn_time/4, this_building.x, this_building.y-50);
}

draw_self();