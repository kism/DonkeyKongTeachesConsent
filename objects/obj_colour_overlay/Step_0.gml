/// @description Fade in depending on heat

//FinalSequenceThreshold
if instance_exists(obj_dk_frenzy) {
	threshhold = obj_dk_frenzy.spank_heat_target * 0.65
} else {
	threshhold = 0	
}
divisor = 60
maxalpha = 0.66

self.image_alpha = scr_get_final_transparency(self.image_alpha, threshhold, divisor, maxalpha)