/// @description Steppy & DK been spanked

if vol >= 0 {
	vol -= 0.005;
    audio_sound_gain(msc_aquatic, vol,0);
} else {
	vol = 0;
}

global_scr_inputGet(glo_controllerid)

if (glo_buttoneraise == true || glo_butttworaise == true)  {
	if frenzy == false {
		alarm[1] = 0.5 * room_speed;
	} else {
		//instance_deactivate_object(obj_ymsi)
		//instance_deactivate_object(obj_once)
		
		//Spank left cheek	
		if glo_buttoneraise == true {
			instance_create_layer(room_width/4.1,room_height/1.6,"Instances",obj_spank_left);
			scr_dk_playSpank();
		}
		//Spank right cheek
		if glo_butttworaise == true {
			instance_create_layer(room_width/3.5,room_height/1.5,"Instances",obj_spank_right);
			scr_dk_playSpank();
		}

		//DK has been correctly spanked	
		obj_dk_reaction.image_index = 1;
		scr_dk_playGrunt();
		alarm[3] = room_speed * 1;
		
		spanks += 1;
	}

}
 