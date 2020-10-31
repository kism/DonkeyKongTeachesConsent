/// @description Steppy & DK been spanked

//This isnt future proof lol Kieran
if vol >= 0 {
	vol -= 0.005;
    audio_sound_gain(msc_aquatic, vol,0);
} else {
	vol = 0;
}

global_scr_inputGet(glo_controllerid)

if ((glo_buttoneraise == true || glo_butttworaise == true) && complete == false)  {
	if frenzy == false {
		alarm[1] = 0.5 * room_speed;
	} else {
		//Spank left cheek	
		if glo_buttoneraise == true {
			instance_create_layer(room_width/4.1,room_height/1.9,"Instances",obj_spank_left);
			scr_dk_playSpank();
		}
		//Spank right cheek
		if glo_butttworaise == true {
			instance_create_layer(room_width/3.5,room_height/1.8,"Instances",obj_spank_right);
			scr_dk_playSpank();
		}

		//DK has been correctly spanked	
		obj_dk_reaction.image_index = 1;
		scr_dk_playGrunt();
		alarm[3] = room_speed * 1;
		
		spanks += 1;
	}

}

// Ending condition
if (spank_heat > 130 && complete == false) {
   alarm[9] = room_speed * 5;
   alarm[8] = room_speed * 1;
   complete = true;
}

if (spank_heat > 1) && (!(audio_is_playing(msc_rambi))) {
	audio_play_sound(msc_rambi,1,0)
}

if (!(instance_exists(obj_shadercontrol))) && (spank_heat > 50) {
	instance_create_layer(0,0,"Instances",obj_shadercontrol)
}

// Spawn meta fruit
if (complete == false && frenzy == true) {
	if (random_range(25, 250) < spank_heat) {
		if irandom(1) == 0 {
			instance_create_layer(0 - room_width / 10, random_range(0,room_height / 2),"Instances",obj_final_fruit)
		} else {
			instance_create_layer(room_width + room_width / 10, random_range(0,room_height / 2),"Instances",obj_final_fruit)
		}
	}
}
