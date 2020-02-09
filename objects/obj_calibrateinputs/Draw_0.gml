/// @description actually calibrate input

x = room_width/2;
y = room_height/2;

if glo_calibrationstate == "controller" || glo_calibrationstate == "calibrated"{
	if glo_buttononemap == "-1"{
		draw_sprite(spr_calibrate, 0, x, y);
		global_scr_inputButtonDetect(glo_controllerid,1);
	} else if glo_buttononealtmap == "-1" {
		draw_sprite(spr_calibrate, 1, x, y);
		global_scr_inputButtonDetect(glo_controllerid,2);
	} else if glo_buttontwomap == "-1"{
		draw_sprite(spr_calibrate, 2, x, y);
		global_scr_inputButtonDetect(glo_controllerid,3)
	} else if glo_buttontwoaltmap == "-1" {
		draw_sprite(spr_calibrate, 3, x, y);
		global_scr_inputButtonDetect(glo_controllerid,4)
	} else if glo_buttontwoaltmap != "-1" {
		glo_calibrationstate = "calibrated";
	}
}

