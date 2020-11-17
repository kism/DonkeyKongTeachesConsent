function scr_dk_playSpank() {
	r = random(2)
	r = floor(r)

	switch (r) {
		case 0:
			audio_play_sound(snd_hand_spank1,1,0)
			break
		case 1:
			audio_play_sound(snd_hand_spank2,1,0)
			break
		case 2:
			audio_play_sound(snd_hand_spank3,1,0)
			break
	}

}
