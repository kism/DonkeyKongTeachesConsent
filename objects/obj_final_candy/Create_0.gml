/// @description Init

// Init
self.image_alpha = 0
self.depth = -99

//FinalSequenceThreshold
if instance_exists(obj_dk_frenzy) {
	threshhold = obj_dk_frenzy.spank_heat_target * 0.25
} else {
	threshhold = 0	
}
divisor = 35
maxalpha = 0.75

// Orbit
orbit = false
angle = 0