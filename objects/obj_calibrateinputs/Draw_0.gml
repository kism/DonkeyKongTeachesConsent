x = 20
y = 20

//Populate
draw_set_font(font_UI);

foundone = false;
text = "Using Controller: " + gamepad_get_description(glo_controllerid)

if glo_calibrationstate == "controller" || glo_calibrationstate == "calibrated"{
	if glo_buttononemap == "-1"{
		text = text + "\nHit Left Konga: "
		global_scr_inputButtonDetect(glo_controllerid,1)
	} else {
		text = text + "\n Left Konga set!"
	}
	if glo_buttononemap != "-1" && glo_buttontwomap == "-1"{
		text = text + "\nHit Right Konga: "
		global_scr_inputButtonDetect(glo_controllerid,2)
	} else if glo_buttontwomap != "-1" {
		text = text + "\n Right Konga set!\nHit both Kongas simultaneously, thrice to start"
		glo_calibrationstate = "calibrated"
	}
}

draw_text(x,y,text);