draw_text(10, 10, selectSquare);
draw_text(10, 25, Pobj_selectionnable.selectionner);

if (leftClick)
{
	draw_rectangle(selectX, selectY, mouse_x, mouse_y, 1);
}

