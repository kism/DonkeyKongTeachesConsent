/// @description find controller to be used

if global.calibrationstate != "initial"{
	visible = false
}

// Check Controllers
for (i = 0; i < 10; i += 1) {
	global_scr_inputDetectController(i)
}

// Check Keyboard
global_scr_inputDetectKeyboard()
