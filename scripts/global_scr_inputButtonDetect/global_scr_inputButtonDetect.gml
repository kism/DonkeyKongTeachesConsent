dvc = argument0;
buttonnumber = argument1;

j = 0
for (j = 0; j < 127; j += 1) { //For the weirdo that has some device that maxes out the standard
	//show_debug_message("Device: " + string(dvc) + " Button: " + string(i) + " State: " + string(gamepad_button_check(dvc,i)))
	if gamepad_button_check(dvc,j){
		if buttonnumber == 1{
			glo_buttononemap = j;
		} else if buttonnumber == 2 && glo_buttononemap != j{
			glo_buttontwomap = j;
		}
	}
}