/// @description steppy

if !obj_startgame.startgame = true {
	if !hold {
		if fadein {
			self.image_alpha += alpharate
	
			if self.image_alpha > alphahighthreshold {
				hold = true
				fadein = false
				alarm[0] = room_speed * 0.5
			}

		} else {
			self.image_alpha -= alpharate
	
			if self.image_alpha < alphalowthreshold {
				fadein = true
			}
		}
	}
} else {
	self.image_alpha -= alpharate
}