function global_scr_inputButtonDetect(argument0, argument1) {
	dvc = argument0
	buttonnumber = argument1

	for (j = 0; j < 127; j += 1) { // For the weirdo that has some device that maxes out the standard
			
		if dvc != 999 {	
			buttoncheck = gamepad_button_check(dvc,j)
		} else {
			buttoncheck = keyboard_check(ord(string(ord(j)))) 	
		}	
			
		if buttoncheck {
			if buttonnumber == 1 {
				global.buttononemap = j
			} else if buttonnumber == 2 && global.buttononemap != j {
				global.buttononealtmap = j
			} else if buttonnumber == 3 && global.buttononemap != j && global.buttononealtmap != j {
				global.buttontwomap = j
			} else if buttonnumber == 4 && global.buttononemap != j && global.buttononealtmap != j && global.buttontwomap != j {
				global.buttontwoaltmap = j
			}
		}
	}

}
