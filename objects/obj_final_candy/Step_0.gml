/// @description Fade in depending on heat

threshhold = 8
divisor = 35


if obj_dk_frenzy.complete = true {
	image_alpha = 0.75;	
} else if obj_dk_frenzy.spank_heat > threshhold {
	image_alpha = (obj_dk_frenzy.spank_heat + obj_dk_frenzy.spanks - threshhold) / divisor;
	if image_alpha > 0.75 {
		image_alpha = 0.75;	
	}
}