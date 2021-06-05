/// @description Init

self.image_alpha = 1
self.image_index = 0
self.x = room_width * 0.37
self.y = room_height * 0.385
self.depth = 20
spanks = 0
incorrectspank = false

//Spanks required to get to the next phase	
if (global.debug == true) {
	spanksrequired = 0 // Debug
} else {
	spanksrequired = 5 // Prod
}

// n delays
delays = 0

// Initial wait until spank
self.alarm[0] = 6.5 * room_speed

// Setup debounce
debounce = false
self.alarm[9] = 0.3 * room_speed

// Start music
audio_play_sound(msc_aquatic,1,0)

scr_dk_createfeet()