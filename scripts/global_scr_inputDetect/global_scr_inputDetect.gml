function global_scr_inputDetect(argument0) {
	dvc = argument0

	for (j = 0; j < 127; j += 1) { //For the weirdo that has some device that maxes out the standard
		//show_debug_message("Device: " + string(dvc) + " Button: " + string(i) + " State: " + string(gamepad_button_check(dvc,i)))
		if gamepad_button_check(dvc, j) {
			global.controllerid = dvc
			obj_calibrateinputs.alarm[0] = room_speed * 0.5
			global.calibrationstate = "pausebeforecontroller"
		}
	}
}
