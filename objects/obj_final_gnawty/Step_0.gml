/// @description Fade in depending on heat

if obj_dk_frenzy.spank_heat > 75 {
	image_alpha = (obj_dk_frenzy.spank_heat + obj_dk_frenzy.spanks - 75) / 50;
}