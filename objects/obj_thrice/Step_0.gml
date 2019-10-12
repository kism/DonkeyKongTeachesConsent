/// @description Insert description here
// You can write your code in this editor

if glo_calibrationstate == "calibrated" || glo_calibrationstate == "transition"{
	visible = true;
	if glo_buttoneraise == true {
		alarm[0] = room_speed * 0.06;
		buttononecountdown = true;
	}
	if glo_butttworaise == true {
		alarm[1] = room_speed * 0.06;
		buttontwocountdown = true;
	}
	if  buttononecountdown && buttontwocountdown && debounce == false{
		debounce = true;
		hits += 1;
		alarm[2] = room_speed * 0.1;
		alarm[3] = room_speed * 0.5;
		show_debug_message(string(hits))
		
		if hits == 1 {
			audio_stop_all()
			if !audio_is_playing(snd_calhit1) {
				audio_play_sound(snd_calhit1,1,0);
			}
		} else if hits == 2 {
			if !audio_is_playing(snd_calhit2) {
				audio_play_sound(snd_calhit2,2,0);
			}
		} else if hits == 3 {
			if !audio_is_playing(snd_calhit3) {
				audio_play_sound(snd_calhit3,3,0);
			}
		} else if hits == 4 {
			if !audio_is_playing(snd_calhit4) {
				audio_play_sound(snd_calhit4,4,0);
			}
		}
	}
} else {
	visible = false;
}

if glo_calibrationstate == "transition"{
	if !instance_exists(obj_transition){
		x = 1920
		y = 0
		instance_create_layer(x,y,"Instances",obj_transition)
		//instance_create_layer(1920,0,"Instances",obj_transition)
	}
}



