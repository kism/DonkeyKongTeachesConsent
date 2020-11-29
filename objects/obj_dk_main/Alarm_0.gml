/// @description DK wants a spank?

if random_range(0,20) >= 20 - delays {
	// Display 'You may spank it', start countdown to 'Once'
	delays = 0
	self.alarm[2] = 1.8 * room_speed
	instance_create_layer(room_width*0.15,room_height*0.22,"Instances",obj_ymsi)
} else {
	if delays = 0 {	
		self.alarm[0] = 3.5 * room_speed
	} else {
		self.alarm[0] = 1.1 * room_speed
	}
	delays += 1
}
