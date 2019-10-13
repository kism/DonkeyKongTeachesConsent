/// @description spawner for the second transition

// This section is laid out this way so I can play with settings
// this was done to avoid arbritary literals
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