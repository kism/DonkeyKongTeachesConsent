/// @description visibility

x = room_width*0.5
y = room_height*0.5

// This could be better
if global.calibrationstate == "controller" || global.calibrationstate == "calibrated"{
	if global.buttononemap == "-1"{
		instance_create_layer(x, y, "Instances", obj_bongos)
		obj_bongos.image_index = 0
		global_scr_inputButtonDetect(global.controllerid,1)
	} else if global.buttononealtmap == "-1" {
		obj_bongos.image_index = 1
		global_scr_inputButtonDetect(global.controllerid,2)
	} else if global.buttontwomap == "-1"{
		obj_bongos.image_index = 2
		global_scr_inputButtonDetect(global.controllerid,3)
	} else if global.buttontwoaltmap == "-1" {
		obj_bongos.image_index = 3
		global_scr_inputButtonDetect(global.controllerid,4)
	} else if global.buttontwoaltmap != "-1" {
		instance_deactivate_object(obj_bongos)
		global.calibrationstate = "calibrated"
	}
}

