//Controls
scr_inputs();

if (leftPressed)
{
	selectX = mouse_x;
	selectY = mouse_y;
}

if (leftClick)
{
	selectSquare = true;
}

if (leftReleased)
{
	selectSquare = false;
	selectEndX = mouse_x;
	selectEndY = mouse_y;
}

if place_meeting(x, y, Pobj_selectionnable)
{
	Pobj_selectionnable.selectionner = true;
}
else 
{
	Pobj_selectionnable.selectionner = false;
}