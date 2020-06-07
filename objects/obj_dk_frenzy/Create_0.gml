/// @description Init

depth = 2;
obj_dk_frenzy.image_alpha = 0.5; //placeholder to indicate this phase
obj_dk_frenzy.image_index = 0;
obj_dk_frenzy.x = room_width/2.7;
obj_dk_frenzy.y = room_height/1.6;

// Misc
frenzy = false
vol = 1;

// Spank Vars, avoid div by zero
spanks = 1;
spank_heat = 1;
spank_heat_min = 1;
spank_heat_new = 1;

complete = false;

//Absolutely spank text
alarm[0] = 5 * room_speed;

