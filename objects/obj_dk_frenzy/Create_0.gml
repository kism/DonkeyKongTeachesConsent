/// @description Init

self.image_index = 0
self.x = room_width * 0.37
self.y = room_height * 0.385
self.depth = 0

// Misc
frenzy = false
vol = 1

// Spank Vars, avoid div by zero
spanks = 0
spank_heat = 0
spank_heat_min = 0
spank_heat_new = 0
spanks_now_declining = false
spanks_max_per_cycle = 3 //Maximum before they start getting nerfed 1/n spanks
spanks_last_cycle = 0

// var to count spank acceleration cycles the player hasnt spanked
cycles_without_spanks = 0

// Ending condition
spank_heat_target = 420
complete = false

// Create Spankmeter layer
instance_create_layer(0, 0, "instances", obj_spankmeter_bg) 

// Misc ending
fadeoutbigraction = false

// Absolutely spank text
self.alarm[11] = 5 * room_speed

scr_dk_createfeet()
