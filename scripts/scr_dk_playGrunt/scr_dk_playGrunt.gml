function scr_dk_playGrunt() {
	r = random(5);
	r = floor(r);

	switch (r) {
		case 0:
			audio_play_sound(snd_dk_grunt1,1,0);
			break;
		case 1:
			audio_play_sound(snd_dk_grunt2,1,0);
			break;
		case 2:
			audio_play_sound(snd_dk_grunt3,1,0);
			break;
		case 3:
			audio_play_sound(snd_dk_grunt4,1,0);
			break;
		case 4:
			audio_play_sound(snd_dk_grunt5,1,0);
			break;
		case 5:
			audio_play_sound(snd_dk_grunt6,1,0);
			break;
	}


}
