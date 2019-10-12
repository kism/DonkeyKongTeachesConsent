dvc = argument0;
buttonnumber = argument1;

j = 0
for (j = 0; j < 127; j += 1) { //For the weirdo that has some device that maxes out the standard
	//show_debug_message("Device: " + string(dvc) + " Button: " + string(i) + " State: " + string(gamepad_button_check(dvc,i)))
	if gamepad_button_check(dvc,j){
		if buttonnumber == 1{
			glo_buttononemap = j;
			audio_play_sound(snd_calhit1,1,0);
		} else if buttonnumber == 2 && glo_buttononemap != j{
			glo_buttononealtmap = j;
			audio_play_sound(snd_calhit2,2,0);
		} else if buttonnumber == 3 && glo_buttononemap != j && glo_buttononealtmap != j{
			glo_buttontwomap = j;
			audio_play_sound(snd_calhit3,3,0);
		} else if buttonnumber == 4 && glo_buttononemap != j && glo_buttononealtmap != j && glo_buttontwomap != j{
			glo_buttontwoaltmap = j;
			audio_play_sound(snd_calhit4,4,0);
		}
	}
}