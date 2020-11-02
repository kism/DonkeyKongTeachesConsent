/// @description actually calibrate input

x = room_width/2;
y = room_height/2;

if glo_calibrationstate == "controller" || glo_calibrationstate == "calibrated"{
	if glo_buttononemap == "-1"{
		instance_create_layer(x,y,"Instances",obj_bongos)
		obj_bongos.image_index = 0;
		global_scr_inputButtonDetect(glo_controllerid,1);
	} else if glo_buttononealtmap == "-1" {
		obj_bongos.image_index = 1;
		global_scr_inputButtonDetect(glo_controllerid,2);
	} else if glo_buttontwomap == "-1"{
		obj_bongos.image_index = 2;
		global_scr_inputButtonDetect(glo_controllerid,3)
	} else if glo_buttontwoaltmap == "-1" {
		obj_bongos.image_index = 3;
		global_scr_inputButtonDetect(glo_controllerid,4)
	} else if glo_buttontwoaltmap != "-1" {
		instance_deactivate_object(obj_bongos);
		glo_calibrationstate = "calibrated";
	}
}

