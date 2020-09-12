/// @description everything happens here

fruit_choice = random_range(0, 5);
alarm[0] = room_speed * 4;



switch (fruit_choice) {   
	case 1:
		image_index = 0;
		break;
	case 2:
		image_index = 1;
		break;
	case 3:
		image_index = 2;
		break;
	case 4:
		image_index = 3;
		break;
	case 5:
		image_index = 4;
		break;
	case 6:
		image_index = 5;
		break;
	default:
		alarm[0] = 0;
		break;
 }
 
if random_range(0,100) > 50 {
	phy_rotation = random_range(100,50);
} else {
	phy_rotation = random_range(-100,-50);
}

phy_angular_velocity = random_range(-100,100);
depth = random_range(25,40);
