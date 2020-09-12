/// @description Spank it, enable frenzy

frenzy = true;

// Spank Acceleration code start!
alarm[2] = room_speed * 0.8;

instance_create_layer(room_width/2,room_height/4.2,"Instances",obj_abs_si);


instance_create_layer(room_width/1.70, room_height/1.4,"Instances",obj_final_candy);
instance_create_layer(room_width/1.15, room_height/1.3,"Instances",obj_final_funky);
instance_create_layer(room_width/1.40, room_height/1.45,"Instances",obj_final_gnawty);