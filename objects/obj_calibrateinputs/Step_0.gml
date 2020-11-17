/// @description visibility

x = room_width*0.5
y = room_height*0.5

// This could be better
if global.glo_calibrationstate == "controller" || global.glo_calibrationstate == "calibrated"{
	if global.glo_buttononemap == "-1"{
		instance_create_layer(x, y, "Instances", obj_bongos)
		obj_bongos.image_index = 0
		global_scr_inputButtonDetect(global.glo_controllerid,1)
	} else if global.glo_buttononealtmap == "-1" {
		obj_bongos.image_index = 1
		global_scr_inputButtonDetect(global.glo_controllerid,2)
	} else if global.glo_buttontwomap == "-1"{
		obj_bongos.image_index = 2
		global_scr_inputButtonDetect(global.glo_controllerid,3)
	} else if global.glo_buttontwoaltmap == "-1" {
		obj_bongos.image_index = 3
		global_scr_inputButtonDetect(global.glo_controllerid,4)
	} else if global.glo_buttontwoaltmap != "-1" {
		instance_deactivate_object(obj_bongos)
		global.glo_calibrationstate = "calibrated"
	}
}

