if (selected = true) {
	draw_sprite(spr_buildg_selected, 0, obj_building.x, obj_building.y);
	draw_text(obj_building.x, obj_building.y+42, cooldown/60);
}

draw_self();
if (display_spawn_time = true)
{
	draw_text(obj_building.x-15, obj_building.y-42, spawn_time/60);
	draw_sprite(spr_barre_progression, spawn_time/4, x, y-50);
}
