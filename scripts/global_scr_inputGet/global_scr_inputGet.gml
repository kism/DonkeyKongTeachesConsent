function global_scr_inputGet(argument0) {
	dvc = argument0;

	buttononestate = gamepad_button_check(dvc,glo_buttononemap) || gamepad_button_check(dvc,glo_buttononealtmap)
	buttontwostate = gamepad_button_check(dvc,glo_buttontwomap) || gamepad_button_check(dvc,glo_buttontwoaltmap)


	if glo_buttoneprevstate == false && buttononestate == true {
		glo_buttoneraise = true
	} else {
		glo_buttoneraise = false
	}

	if glo_butttwoprevstate == false && buttontwostate == true {
		glo_butttworaise = true
	} else {
		glo_butttworaise = false
	}

	glo_buttoneprevstate = buttononestate
	glo_butttwoprevstate = buttontwostate


}
