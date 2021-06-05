function scr_calibratebananas_spawn(inSide,inDepth) {
	if inSide == "left" || inSide == "right" {
		// Create banana
		for (i = 0; i < 16; i += 1) {
			if inSide == "left" {
				rx = random_range(0 - room_width * 0.1, room_width * 0.5)
			} else { // right
				rx = room_width * 0.5 + random_range(0, room_width * 0.6)
			}
			ry = random_range(0 - room_height * 0.2, room_height)
			//instance_create_layer(rx,ry,"Instances",obj_banana)
			instance_create_depth(rx,ry,inDepth,obj_banana)
		}
	}
}