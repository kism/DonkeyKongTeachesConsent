/// @description Spawn one or many Bananas!
// if a button has been pressed, depending on the game state

if global.calibrationstate != "transition" {
	global_scr_inputGet(global.controllerid)

	if global.buttoneraise == true {
		for (j = 0; j < nbananas; j += 1) {
			rx = (0 - room_width * 0.1) + random_range(0, room_width * 0.5)
			ry = random_range(0,room_height * 0.4)
			instance_create_layer(rx,ry,"Instances",obj_banana)
		}
	} 
	
	if global.butttworaise == true {
		for (j = 0; j < nbananas; j += 1) {
			rx = room_width * 0.45 + random_range(0, room_width * 0.5)
			ry = random_range(0, room_height * 0.4)
			instance_create_layer(rx, ry, "Instances", obj_banana)
		}
	}
} else {
		instance_deactivate_object(obj_spawner)
}