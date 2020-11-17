/// @description DK wants a spank?

if random_range(0,10) >= 8 {
	self.alarm[2] = 1.8 * room_speed
	instance_create_layer(room_width*0.15,room_height*0.22,"Instances",obj_ymsi)
} else {
	self.alarm[0] = 1 * room_speed
}
