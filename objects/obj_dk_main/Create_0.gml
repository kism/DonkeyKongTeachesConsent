/// @description Init

self.image_alpha = 1
self.image_index = 0
self.x = room_width * 0.37
self.y = room_height * 0.385
self.depth = 20
spanks = 0
spanksrequired = 5 // Spanks required to get to the next phase

// Initial wait until spank
self.alarm[0] = 6 * room_speed

// Setup debounce
debounce = false
self.alarm[9] = 0.3 * room_speed

// Start music
audio_play_sound(msc_aquatic,1,0)

scr_dk_createfeet()