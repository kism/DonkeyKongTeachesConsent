/// @description Insert description here
// You can write your code in this editor

//grav = -0.0001

phy_rotation = random_range(-179,179)
alarm[0] = room_speed * 4
depth = 0

//instance_deactivate_object(instance_id);

if !audio_is_playing(snd_calhit1) && !audio_is_playing(snd_calhit2) && !audio_is_playing(snd_calhit3) && !audio_is_playing(snd_calhit4) {
	audio_play_sound(snd_banana,0,0);
}