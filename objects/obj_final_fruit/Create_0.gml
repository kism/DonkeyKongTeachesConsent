/// @description everything happens here

alarm[0] = room_speed * 4;

switch (irandom(5)) {   
	case 1:
		image_index = 0; break;
	case 2:
		image_index = 1; break;
	case 3:
		image_index = 2; break;
	case 4:
		image_index = 3; break;
	case 5:
		image_index = 4; break;
	case 6:
		image_index = 5; break;
	default:
		alarm[0] = 0; break; // Don't question
 }
 
if random_range(0,1) == 0 {
	phy_linear_velocity_x = random_range(-300, 300);
	phy_linear_velocity_y = 30
} else {
	phy_linear_velocity_x = random_range(-300, 300);
	phy_linear_velocity_y = 30
}
 
self.y = random_range(0,room_height);
 
//Rotation
if random_range(0,100) > 50 {
	phy_rotation = random_range(100,50);

} else {
	phy_rotation = random_range(-100,-50);
}

//No idea what this does
phy_angular_velocity = random_range(-100,100);

//Make stacking a bit nicer
depth = random_range(-10,-20);
