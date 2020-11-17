function global_scr_inputGet(argument0) {
	dvc = argument0

	buttononestate = gamepad_button_check(dvc,global.glo_buttononemap) || gamepad_button_check(dvc,global.glo_buttononealtmap)
	buttontwostate = gamepad_button_check(dvc,global.glo_buttontwomap) || gamepad_button_check(dvc,global.glo_buttontwoaltmap)


	if global.glo_buttoneprevstate == false && buttononestate == true {
		global.glo_buttoneraise = true
	} else {
		global.glo_buttoneraise = false
	}

	if global.glo_butttwoprevstate == false && buttontwostate == true {
		global.glo_butttworaise = true
	} else {
		global.glo_butttworaise = false
	}

	global.glo_buttoneprevstate = buttononestate
	global.glo_butttwoprevstate = buttontwostate


}
