//Set cooldown to create unit
if (selected == true) && (getUnit) {
	setCooldown = cooldown--;
}

//Reset cooldown
if (setCooldown == 0) {
	instance_create_layer(x+20, y,"Lay_units", unit);
	setCooldown = -1;
}

