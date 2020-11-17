/// @description Spank it, enable frenzy

frenzy = true

// Spank Acceleration code start!
self.alarm[2] = room_speed * 0.8

instance_create_layer(room_width * 0.5, room_height * 0.238, "Instances", obj_abs_si)

instance_create_layer(room_width * 0.33, room_height / 1.4, "Instances", obj_final_candy)
instance_create_layer(room_width * 0.66, room_height / 1.3, "Instances", obj_final_gnawty)
instance_create_layer(room_width * 0.50, room_height / 1.45, "Instances", obj_final_funky)
instance_create_layer(0, 0, "Instances", obj_colour_overlay)

