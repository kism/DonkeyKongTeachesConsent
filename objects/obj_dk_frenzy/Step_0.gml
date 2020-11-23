/// @description Steppy & DK been spanked

// This isnt future proof lol Kieran
if vol >= 0 {
	vol -= 0.005
    audio_sound_gain(msc_aquatic, vol,0)
} else {
	vol = 0
}

global_scr_inputGet(global.controllerid)

if ((global.buttoneraise == true || global.butttworaise == true) && complete == false)  {
	if frenzy == false {
		self.alarm[1] = 0.5 * room_speed
	} else { 
		// Spank left cheek	
		if global.buttoneraise == true {
			// instance_create_layer(x + room_width*0.05,x - room_width*0.05,"Instances",obj_spank_left)
			scr_dk_doSpank(self.x, self.y, "left")
		}
		// Spank right cheek
		if global.butttworaise == true {
			// instance_create_layer(x - room_width*0.05,x - room_width*0.05,"Instances",obj_spank_right)
			scr_dk_doSpank(self.x, self.y, "right")
		}
		
		// I think this is safe to assume but still
		if instance_exists(obj_dk_reaction_big) {
			obj_dk_reaction_big.image_xscale = 1.02
			obj_dk_reaction_big.image_yscale = 1.02
			self.alarm[1] = 0.05 * room_speed;
		}

		// Play sound and probably dont revert because we are in frenzy
		scr_dk_playGrunt()
		spanks += 1
	}
}

// Spank reaction is now dependent on spank acceleration instead of a spank
if (spank_heat > (spank_heat_target * 0.4)) && complete == false {
	if spanks_now_declining == true {
		obj_dk_reaction.image_index = 1
	} else {
		obj_dk_reaction.image_index = 2
	}
} else if complete == false{
	if spanks > 2 {
		obj_dk_reaction.image_index = 2
	} else {
		obj_dk_reaction.image_index = 1
	}				
}		

// Check and maybe start ending Sequence
if (spank_heat > spank_heat_target && complete == false) {
   // Play Sound
   self.alarm[8] = room_speed * 1
   // Go to credits
   self.alarm[9] = room_speed * 6.5
   
   	// Should always be true at this point in time
	if (audio_is_playing(msc_rambi)) {
		audio_sound_gain(msc_rambi, 0, 0.5)
	}
	obj_dk_reaction.image_index = 1	
	complete = true
}

// Music Control
if ((spank_heat > 1) && (!(audio_is_playing(msc_rambi)))) {
	audio_play_sound(msc_rambi, 1, 0)
}

if (!(instance_exists(obj_shadercontrol))) && (spank_heat > (spank_heat_target * 0.45)) {
	instance_create_layer(0, 0, "Instances", obj_shadercontrol)
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
