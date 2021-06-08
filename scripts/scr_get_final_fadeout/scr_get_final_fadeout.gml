function scr_get_final_fadeout(inAlpha){
	alpha = inAlpha	
	if instance_exists(obj_dk_frenzy) {
		//Fade out at the half way point
		//FinalSequenceThreshold
		if (obj_dk_frenzy.spank_heat > (obj_dk_frenzy.spank_heat_target * 0.55) && inAlpha > 0) {
			alpha = inAlpha - 1/240 //what is this 240 even, like an old target?
		} else if (obj_dk_frenzy.spank_heat < (obj_dk_frenzy.spank_heat_target * 0.55) && inAlpha < 1) {
			alpha = inAlpha + 1/240
		}
	} 
	return alpha
}