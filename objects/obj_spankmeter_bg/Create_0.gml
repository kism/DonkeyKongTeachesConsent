/// @description Creato

self.depth = -998
//self.image_alpha = 1
self.x = room_width * 0.5
self.y = 0 - self.sprite_height

fadein  = false
fadeout = false

// Create Spankmeter layer
instance_create_layer(self.x, self.y, "instances", obj_spankmeter_fg) 
