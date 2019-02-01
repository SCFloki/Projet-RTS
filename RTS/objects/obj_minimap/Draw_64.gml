//Draw map background
draw_set_alpha(1);
draw_set_color(c_black);
draw_rectangle(xp, yp, xp+width, yp+height, 0);

//Draw map border
draw_set_color(c_white);
draw_rectangle(xp, yp, xp+width, yp+height, 1);

//Draw enemy
draw_set_color(c_red);
draw_set_alpha(0.8);
var enemyCount;
enemyCount = instance_number(obj_enemy);
for(k=0; k<enemyCount; k++)
{
	enemyId = instance_find(obj_enemy, k);
	var wherex = xp + enemyId.x*(xscale);
	var wherey = yp + enemyId.y*(yscale);
	draw_circle(wherex, wherey, 2, 0);
}

//Draw ally_buildings
draw_set_color(c_yellow);
draw_set_alpha(0.8);
var buildCount;
buildCount = instance_number(Pobj_buildSelection);
for(k=0; k<buildCount; k++)
{
	buildId = instance_find(Pobj_buildSelection, k);
	var wherex = xp + buildId.x*(xscale);
	var wherey = yp + buildId.y*(yscale);
	draw_circle(wherex, wherey, 2, 0);
}

//Draw ally_units
draw_set_color(c_green);
draw_set_alpha(0.8);
var allyCount;
allyCount = instance_number(Pobj_allyUnit);
for(k=0; k<allyCount; k++)
{
	allyId = instance_find(Pobj_allyUnit, k);
	var wherex = xp + allyId.x*(xscale);
	var wherey = yp + allyId.y*(yscale);
	draw_circle(wherex, wherey, 2, 0);
}