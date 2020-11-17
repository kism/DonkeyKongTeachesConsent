/// @description Spawn banana!
// if a button has been pressed

if glo_calibrationstate != "transition" {
	global_scr_inputGet(glo_controllerid)

	if glo_buttoneraise == true {
		rx = (0 - room_width * 0.1) + random_range(0, room_width * 0.5)
		ry = random_range(0,room_height * 0.4)
		instance_create_layer(rx,ry,"Instances",obj_banana)
	} 
	
	if glo_butttworaise == true {
		rx = room_width * 0.45 + random_range(0, room_width * 0.5)
		ry = random_range(0, room_height * 0.4)
		instance_create_layer(rx, ry, "Instances", obj_banana)
	}
} else {
		instance_deactivate_object(obj_spawner)
}