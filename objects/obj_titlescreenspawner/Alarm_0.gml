/// @description Insert description here
// You can write your code in this editor

if count < 420 {
	for (i = 0; i < 420; i += 1) {
		rx = random_range(0,room_width * 1.2);
		ry = random_range(0,room_height * 1.4);
		instance_create_layer(rx,ry,"Instances",obj_banana);

		rx = random_range(0,room_width * 1.2);
		ry = random_range(0,room_height * 1.4);
		instance_create_layer(rx,ry,"Instances",obj_peach);		
	}
}