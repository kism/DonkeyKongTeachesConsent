function global_scr_inputGet(argument0) {
	dvc = argument0

	buttononestate = gamepad_button_check(dvc,global.buttononemap) || gamepad_button_check(dvc,global.buttononealtmap)
	buttontwostate = gamepad_button_check(dvc,global.buttontwomap) || gamepad_button_check(dvc,global.buttontwoaltmap)

	if global.buttoneprevstate == false && buttononestate == true {
		global.buttoneraise = true
	} else {
		global.buttoneraise = false
	}

	if global.butttwoprevstate == false && buttontwostate == true {
		global.butttworaise = true
	} else {
		global.butttworaise = false
	}
	
	// Hack in multipress
	if instance_exists(obj_dk_frenzy) {
		if gamepad_button_check(dvc,global.buttononemap) && gamepad_button_check(dvc,global.buttononealtmap) {
			if global.buttonemulti == false {
				global.buttoneraise = true
			}
			global.buttonemulti = true
		} else {
			global.buttonemulti = false
		}
		if gamepad_button_check(dvc,global.buttontwomap) && gamepad_button_check(dvc,global.buttontwoaltmap) {
			if global.butttwomulti == false {
				global.butttworaise = true
			}
			global.butttwomulti = true
		} else {
			global.butttwomulti = false
		}
	}

	global.buttoneprevstate = buttononestate
	global.butttwoprevstate = buttontwostate

}
