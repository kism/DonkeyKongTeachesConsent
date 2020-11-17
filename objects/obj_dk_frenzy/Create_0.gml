/// @description Init

//image_alpha = 0.75
//self.image_alpha = 1 //placeholder to indicate this phase
self.image_index = 0
self.x = room_width * 0.37
self.y = room_height * 0.385
self.depth = 0

// Misc
frenzy = false
vol = 1

// Spank Vars, avoid div by zero
spanks = 1
spank_heat = 1
spank_heat_min = 1
spank_heat_new = 1

complete = false

//Absolutely spank text
self.alarm[11] = 1 * room_speed

scr_dk_createfeet()


