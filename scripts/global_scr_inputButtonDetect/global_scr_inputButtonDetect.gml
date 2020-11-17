function global_scr_inputButtonDetect(argument0, argument1) {
	dvc = argument0
	buttonnumber = argument1

	for (j = 0; j < 127; j += 1) { //For the weirdo that has some device that maxes out the standard
		//show_debug_message("Device: " + string(dvc) + " Button: " + string(i) + " State: " + string(gamepad_button_check(dvc,i)))
		if gamepad_button_check(dvc,j){
			if buttonnumber == 1{
				glo_buttononemap = j
			} else if buttonnumber == 2 && glo_buttononemap != j{
				glo_buttononealtmap = j
			} else if buttonnumber == 3 && glo_buttononemap != j && glo_buttononealtmap != j{
				glo_buttontwomap = j
			} else if buttonnumber == 4 && glo_buttononemap != j && glo_buttononealtmap != j && glo_buttontwomap != j{
				glo_buttontwoaltmap = j
			}
		}
	}
}
