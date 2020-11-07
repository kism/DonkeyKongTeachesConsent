/// @description Init

self.image_alpha = 0;
self.image_index = 0;
self.x = room_width/2.7;
self.y = room_height/2.6;
alarm[0] = 5 * room_speed;
debounce = false;
alarm[9] = 0.3 * room_speed;
audio_play_sound(msc_aquatic,1,0);
spanks = 0;
depth = 20;
