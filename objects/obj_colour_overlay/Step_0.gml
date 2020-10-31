/// @description Fade in depending on heat

superspankmetric = ((obj_dk_frenzy.spank_heat + obj_dk_frenzy.spanks - 75) / 30)

if obj_dk_frenzy.spank_heat > 30 {
	if (superspankmetric < 0.66) {
		image_alpha = superspankmetric;
	} else {
		image_alpha = 0.66
	}
	
}