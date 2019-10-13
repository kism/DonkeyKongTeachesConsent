/// @description Start the game

if ready == true {
	global_scr_inputGet(glo_controllerid);

	if glo_buttoneraise == true || glo_butttworaise == true {
		physics_world_gravity(0,60);
		if !instance_exists(obj_dk) {
			instance_create_depth(room_width * 0.5,room_height * 0.5,50,obj_dk);
			obj_dk.image_alpha = 0;
			startgame = true
		}	
	} 
}

if startgame == true {
	if obj_desk.image_alpha > 0 {
		obj_desk.image_alpha -= 0.01;
	}
	if obj_title.image_alpha > 0 {
		obj_title.image_alpha -= 0.01;
	}
	if obj_bluebg.image_alpha > 0 {
		obj_bluebg.image_alpha -= 0.0025;
	}
	if audio_sound_get_gain(msc_schoolhouse) == 1 {
		audio_sound_gain(msc_schoolhouse,0,5000)
		alarm[1] = room_speed * 3
	}
}