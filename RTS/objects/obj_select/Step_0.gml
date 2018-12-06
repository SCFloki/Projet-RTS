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

if ( (Pobj_selectionnable.x >= selectX) && (Pobj_selectionnable.x <= selectEndX) ) && (Pobj_selectionnable.y >= selectY) && (Pobj_selectionnable.y <= selectEndY)
{
	Pobj_selectionnable.selectionner = true;
}
else 
{
	Pobj_selectionnable.selectionner = false;
}