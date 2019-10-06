x = 20
y = 20

//Populate
draw_set_font(font_UI);

foundone = false;
text = "Using Controller: " + gamepad_get_description(glo_controllerid)

if glo_calibrationstate == "controller"{
	if glo_buttononemap == "-1"{
		text = text + "\nPress left button: "
		global_scr_inputButtonDetect(glo_controllerid,1)
	} else {
		text = text + "\n Left  Button set!"
	}
	if glo_buttononemap != "-1" && glo_buttontwomap == "-1"{
		text = text + "\nPress right button: "
		global_scr_inputButtonDetect(glo_controllerid,2)
	} else if glo_buttontwomap != "-1" {
		text = text + "\n Right Button set!"
	}
}

draw_text(x,y,text);