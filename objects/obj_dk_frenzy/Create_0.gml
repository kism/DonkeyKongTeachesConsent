/// @description Init

// image_alpha = 0.75
// self.image_alpha = 1 // placeholder to indicate this phase
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
spanks_now_declining = false

// Ending condition, 130 for debug, 230 for final?
spank_heat_target = 230
complete = false

// Create Spankmeter layer
instance_create_layer(room_width * 0.5, room_height * 0.05, "instances", obj_spankmeter_bg) 

// Misc ending
fadeoutbigraction = false

if global.debug == true {
	instance_create_layer(room_width * 0.1, room_height * 0.1, "instances", obj_spank_debug) 
}

// Absolutely spank text
self.alarm[11] = 5 * room_speed

scr_dk_createfeet()
