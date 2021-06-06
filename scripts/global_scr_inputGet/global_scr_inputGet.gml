function global_scr_inputGet(argument0) {
	dvc = argument0

	buttononestate_primary   = gamepad_button_check(dvc,global.buttononemap)
	buttononestate_alternate = gamepad_button_check(dvc,global.buttononealtmap)
	
	buttontwostate_primary   = gamepad_button_check(dvc,global.buttontwomap)
	buttontwostate_alternate = gamepad_button_check(dvc,global.buttontwoaltmap)

	if global.buttoneprevstate_primary == false && buttononestate_primary == true {
		global.buttonemulti += 1
	} 
	if global.buttoneprevstate_alternate == false && buttononestate_alternate == true {
		global.buttonemulti += 1
	} 

	if global.butttwoprevstate_primary == false && buttontwostate_primary == true {
		global.butttwomulti += 1
	} 
	if global.butttwoprevstate_alternate == false && buttontwostate_alternate == true {
		global.butttwomulti += 1
	} 
	
	
	
	// Hack in multipress
	if global.buttonemulti >= 1 {
		global.buttoneraise = true
		if instance_exists(obj_dk_frenzy) || global.calibrationstate == "credits" {
			global.buttonemulti -= 1
		} else {
			global.buttonemulti = 0
		}
	}
	if global.butttwomulti >= 1 {
		global.butttworaise = true
		if instance_exists(obj_dk_frenzy) || global.calibrationstate == "credits" {
			global.butttwomulti -= 1
		} else {
			global.butttwomulti = 0
		}
	}

	// Set future previous presses
	global.buttoneprevstate_primary   = buttononestate_primary
	global.buttoneprevstate_alternate = buttononestate_alternate
	global.butttwoprevstate_primary   = buttontwostate_primary
	global.butttwoprevstate_alternate = buttontwostate_alternate
}
