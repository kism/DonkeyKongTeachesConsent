/// @description init

if instance_exists(obj_dk_main) {
	self.alarm[0] = 0.3 * room_speed
} else {
	// Short animation during final sequence
	self.alarm[0] = 0.1 * room_speed
}

self.depth = -10

instance_create_depth(self.x - room_width * 0.01, self.y + room_height * 0.01, -9, obj_star)