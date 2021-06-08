/// @description Init

self.image_alpha = 0
self.depth = -100

//FinalSequenceThreshold
if instance_exists(obj_dk_frenzy) {
	threshhold = obj_dk_frenzy.spank_heat_target * 0.45
} else {
	threshhold = 0	
}
divisor = 40
maxalpha = 0.75

// Orbit
orbit = false
angle = 120