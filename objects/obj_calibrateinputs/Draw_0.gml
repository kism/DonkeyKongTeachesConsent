x = room_width/2;
y = room_height/2;

//Populate
//draw_set_font(font_Calibration);

/*text = "Using Controller: " + gamepad_get_description(glo_controllerid);

if glo_calibrationstate == "controller" || glo_calibrationstate == "calibrated"{
	if glo_buttononemap == "-1"{
		text = text + "\nHit Left Konga: ";
		global_scr_inputButtonDetect(glo_controllerid,1);
		draw_text(x,y,text);
	} else {
		text = text + "\n Left Konga set!";
	}
	if glo_buttononemap != "-1" && glo_buttontwomap == "-1"{
		text = text + "\nHit Right Konga: "
		global_scr_inputButtonDetect(glo_controllerid,2)
		draw_text(x,y,text);
	} else if glo_buttontwomap != "-1" {
		//text = text + "\n Right Konga set!\nHit both Kongas simultaneously, thrice to start";
		//text = "";
		//visible = false;
		glo_calibrationstate = "calibrated";
		//draw_text(x,y,text);
	}
}*/

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

