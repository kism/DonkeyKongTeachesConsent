/// @description Start the game

if ready == true {
	global_scr_inputGet(global.controllerid)

	// instance_create_depth(0,0,1,obj_dk_inactive)

	if global.buttoneraise == true || global.butttworaise == true {
		physics_world_gravity(0, 60)
		startgame = true
	} 
}

if startgame == true {
	if !instance_exists(obj_greenbg) {
		instance_create_depth(0, 0, 1, obj_greenbg)
	}	
	if obj_desk.image_alpha > 0 {
		obj_desk.image_alpha -= 0.01
	}
	if obj_title.image_alpha > 0 {
		obj_title.image_alpha -= 0.01
	}
	global.fadetogame = true
	if audio_sound_get_gain(msc_schoolhouse) == 1 {
		audio_sound_gain(msc_schoolhouse, 0, 5000)
		self.alarm[1] = room_speed * 5
	}
}