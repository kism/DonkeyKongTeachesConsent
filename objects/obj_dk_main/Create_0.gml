/// @description Init

obj_dk_main.image_alpha = 0;
obj_dk_main.image_index = 0;
obj_dk_main.x = room_width/2.7;
obj_dk_main.y = room_height/1.6;
alarm[0] = 5 * room_speed;
debounce = false;
alarm[9] = 0.3 * room_speed;
audio_play_sound(msc_aquatic,1,0);
spanks = 0;
depth = 20;