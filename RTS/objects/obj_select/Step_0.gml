//Controls
scr_inputs();

if (rightPressed)
{
	selectX = mouse_x;
	selectY = mouse_y;
}

if (rightClick)
{
	selectSquare = true;
}

if (rightReleased)
{
	selectSquare = false;
}