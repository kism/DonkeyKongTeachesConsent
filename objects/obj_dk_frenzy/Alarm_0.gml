/// @description Spank it, enable frenzy

frenzy = true;

// Spank Acceleration code start!
alarm[2] = room_speed * 0.8;

instance_create_layer(room_width/2,room_height/4.2,"Instances",obj_abs_si);