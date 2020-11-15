/// @description Init

self.image_alpha = 1;
self.image_index = 0;
self.x = room_width * 0.37;
self.y = room_height * 0.385;

//Initial wait until spank
alarm[0] = 6 * room_speed;

debounce = false;
alarm[9] = 0.3 * room_speed;
audio_play_sound(msc_aquatic,1,0);
spanks = 0;
depth = 20;
