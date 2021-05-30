/// @description Creato

self.depth = -198
//self.image_alpha = 1
self.x = room_width * 0.5
self.y = 0 - self.sprite_height
target_y = 0.07

fadein  = false
fadeout = false

// Create Spankmeter layer
instance_create_layer(self.x, self.y, "instances", obj_spankmeter_fg) 