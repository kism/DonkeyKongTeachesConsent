/// @description Spawn banana!
// if a button has been pressed

global_scr_inputGet(global.controllerid)

if global.buttoneraise == true {
	rx = (0 - room_width * 0.1) + random_range(0, room_width * 0.5)
	ry = random_range(0,room_height * 0.4)
	instance_create_layer(rx,ry,"Instances",obj_banana)
} 
	
if global.butttworaise == true {
	rx = room_width * 0.45 + random_range(0, room_width * 0.5)
	ry = random_range(0, room_height * 0.4)
	instance_create_layer(rx, ry, "Instances", obj_banana)
}