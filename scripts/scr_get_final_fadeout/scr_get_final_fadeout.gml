// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_get_final_fadeout(inAlpha){
	alpha = inAlpha	
	if instance_exists(obj_dk_frenzy) {
		//Fade out at the half way point
		if (obj_dk_frenzy.spank_heat > (obj_dk_frenzy.spank_heat_target / 2) && inAlpha > 0) {
			alpha = inAlpha - 1/240
		} else if (obj_dk_frenzy.spank_heat < (obj_dk_frenzy.spank_heat_target / 2) && inAlpha < 1) {
			alpha = inAlpha + 1/240
		}
	} 
	return alpha
}