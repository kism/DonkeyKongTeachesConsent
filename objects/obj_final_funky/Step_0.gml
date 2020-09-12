/// @description Fade in depending on heat

if obj_dk_frenzy.spank_heat > 30 {
	image_alpha = (obj_dk_frenzy.spank_heat + obj_dk_frenzy.spanks - 30) / 80;
}