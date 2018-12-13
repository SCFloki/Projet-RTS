event_inherited();

//Draw cooldown
if (display_spawn_time = true)
{
	draw_text(obj_building.x-15, obj_building.y-42, spawn_time/60);
	draw_sprite(spr_barre_progression, spawn_time/4, x, y-50);
}

draw_self();