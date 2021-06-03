/// @description main boye

// This whole object is a bit cooked since im stripping old code for something more streamlined
// This will be ported to the callibration object


if global.calibrationstate == "calibrated"{
	self.alarm[0] = room_speed * 0.6
	global.calibrationstate = "pepsi"
}

if global.calibrationstate == "transition"{
	if !instance_exists(obj_transition) && transitionstarted = false {
		transitionstarted = true
		self.alarm[3] = room_speed * 1.0
		self.alarm[4] = room_speed * 1.0
		self.alarm[5] = room_speed * 3.0
		self.x = 1920
		self.y = 0
		
	}
}


