/// @description spawner for the second transition

// This section is laid out this way so I can play with settings
// this was done to avoid arbritary literals

// This split up to avoid doing it all in one frame

if done == false {
	for (i = 0; i < 300; i += 1) {
		rx = random_range(room_width - room_width * 1.2,room_width * 1.2)
		ry = random_range(room_height - room_height * 1.3,room_height * 1.3)
		instance_create_layer(rx,ry,"Instances",obj_banana)

		rx = random_range(room_width - room_width * 1.2,room_width * 1.2)
		ry = random_range(room_height - room_height * 1.4,room_height * 1.4)
		instance_create_layer(rx,ry,"Instances",obj_peach)		
	}
	done = true
}