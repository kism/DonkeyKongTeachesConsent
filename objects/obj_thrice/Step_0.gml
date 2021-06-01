/// @description main boye

if global.calibrationstate == "calibrated" || global.calibrationstate == "transition"{
	self.visible = true
	if global.buttoneraise == true {
		self.alarm[0] = room_speed * 0.09 // Sensitivity of registering two buttons pressed
		buttononecountdown = true
	}
	if global.butttworaise == true {
		self.alarm[1] = room_speed * 0.09 // Sensitivity of registering two buttons pressed
		buttontwocountdown = true
	}
	if  buttononecountdown && buttontwocountdown && debounce == false{
		debounce = true
		hits += 1
		self.alarm[2] = room_speed * 0.10 // Debounce
		self.alarm[3] = room_speed * 0.75 // Reset the thrice
		show_debug_message(string(hits))
		
		if hits == 1 {
			if !audio_is_playing(snd_calhit1) {
				audio_stop_sound(snd_banana)
				audio_play_sound(snd_calhit1,1,0)
			}
		} else if hits == 2 {
			if !audio_is_playing(snd_calhit2) {
				audio_stop_sound(snd_banana)
				audio_play_sound(snd_calhit2,2,0)
			}
		} else if hits == 3 {
			if !audio_is_playing(snd_calhit3) {
				audio_stop_sound(snd_banana)
				audio_play_sound(snd_calhit3,3,0)
			}
		} else if hits == 4 {
			if !audio_is_playing(snd_calhit4) {
				audio_stop_sound(snd_banana)
				audio_play_sound(snd_calhit4,4,0)
			}
		}
	}
} else {
	self.visible = false
}

if global.calibrationstate == "transition"{
	if !instance_exists(obj_transition) {
		self.alarm[4] = room_speed * 1.0
		self.alarm[5] = room_speed * 3.0
		self.x = 1920
		self.y = 0
		instance_create_layer(self.x, self.y, "Instances", obj_transition)
	}
}


