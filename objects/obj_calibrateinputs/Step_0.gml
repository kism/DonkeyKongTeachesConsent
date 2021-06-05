/// @description visibility

x = room_width * 0.5
y = room_height * 0.5

// This could be better
if global.calibrationstate == "controller" || global.calibrationstate == "calibrated" {
	if global.buttononemap == "-1" {
		self.image_alpha = 1
		global_scr_inputButtonDetect(global.controllerid,1)
	} else if global.buttononealtmap == "-1" {
		self.image_index = 1
		if audioplayed[0] == false {
			scr_calibratebananas_spawn("left")
			audio_play_sound(snd_calhit1,1,0)
			audioplayed[0] = true
		}
		global_scr_inputButtonDetect(global.controllerid,2)
	} else if global.buttontwomap == "-1" {
		self.image_index = 2
		if audioplayed[1] == false {
			scr_calibratebananas_spawn("left")
			audio_play_sound(snd_calhit2,2,0)
			audioplayed[1] = true
		}
		global_scr_inputButtonDetect(global.controllerid,3)
	} else if global.buttontwoaltmap == "-1" {
		self.image_index = 3
		if audioplayed[2] == false {
			scr_calibratebananas_spawn("right")
			audio_play_sound(snd_calhit3,3,0)
			audioplayed[2] = true
		}
		global_scr_inputButtonDetect(global.controllerid,4)
	} else if global.buttontwoaltmap != "-1" {
		self.image_alpha = 0
		if audioplayed[3] == false {
			scr_calibratebananas_spawn("right")
			audio_play_sound(snd_calhit4,4,0)
			audioplayed[3] = true
		}
		global.calibrationstate = "calibrated"
	}
}

