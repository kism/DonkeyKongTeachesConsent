/// @description Insert description here

if instance_exists(obj_dk_main) {
	self.alarm[0] = 0.045 * room_speed
} else {
	// Short animation during final sequence
	self.alarm[0] = 0.040 * room_speed
}