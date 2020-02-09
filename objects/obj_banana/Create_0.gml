/// @description on spawn

if glo_calibrationstate != "transitionend" {
	alarm[0] = room_speed * 4;
	phy_rotation = random_range(-179,179);
	depth = 0
	if !audio_is_playing(snd_calhit1) && !audio_is_playing(snd_calhit2) && !audio_is_playing(snd_calhit3) && !audio_is_playing(snd_calhit4) {
		audio_play_sound(snd_banana,0,0);
	}
} else {
	obj_titlescreenspawner.count += 1;
	//alarm[0] = room_speed * 30;
	if random_range(0,100) > 50 {
		phy_rotation = random_range(100,50);
	} else {
		phy_rotation = random_range(-100,-50);
	}
	phy_angular_velocity = random_range(-100,100);
	depth = random_range(25,40);
}