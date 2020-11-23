/// @description init

self.image_alpha = 0
fadeout = false

// Create big object to puppet later
instance_create_layer(room_width * 0.5, room_height * 0.48, "instances", obj_dk_reaction_big)
obj_dk_reaction_big.image_alpha = 0