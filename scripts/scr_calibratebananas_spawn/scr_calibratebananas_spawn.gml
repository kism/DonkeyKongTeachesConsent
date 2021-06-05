// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_calibratebananas_spawn(inSide) {
	if inSide == "left" || inSide == "right" {
		// Create banana
		for (i = 0; i < 30; i += 1) {
			if inSide == "left" {
				rx = random_range(0, room_width * 0.5)
			} else { // right
				rx = room_width * 0.5 + random_range(0, room_width * 0.5)
			}
			ry = random_range(0, room_height)
			instance_create_layer(rx,ry,"Instances",obj_banana_nophysics)
		}
	}
}