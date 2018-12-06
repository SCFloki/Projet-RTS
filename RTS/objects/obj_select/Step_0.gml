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
}