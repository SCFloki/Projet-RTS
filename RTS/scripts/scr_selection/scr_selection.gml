///scr_selection(press_x, press_y, release_x, release_y)

//Press
var px = argument[0];
var py = argument[1];

//Released
var rx = argument[2];
var ry = argument[3];

//Case
var tlbr = (x>px && x<rx && y>py && y<ry);
var bltr = (x>px && x<rx && y<py && y>ry);
var brtl = (x<px && x>rx && y<py && y>ry);
var trbl = (x<px && x>rx && y>py && y<ry);

//Selection
if (tlbr || brtl || bltr || trbl) {
	selected = true;
} else {
	selected = false;
}

