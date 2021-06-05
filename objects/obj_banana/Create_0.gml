/// @description on spawn

if global.calibrationstate == "transition_end" {
	if random_range(0,100) > 50 {
		self.phy_rotation = random_range(100,50)
	} else {
		self.phy_rotation = random_range(-100,-50)
	}
	self.phy_angular_velocity = random_range(-100,100)
	self.depth = random_range(25,40)
} else {
	self.alarm[0] = room_speed * 4
	self.phy_rotation = random_range(-179,179)
	self.depth = 100
	if global.calibrationstate == "credits" {
		if !audio_is_playing(snd_calhit1) && !audio_is_playing(snd_calhit2) && !audio_is_playing(snd_calhit3) && !audio_is_playing(snd_calhit4) {
			audio_play_sound(snd_banana,0,0)
		}
	}
} 