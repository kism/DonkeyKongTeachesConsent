function scr_get_final_transparency(inImage_alpha, inThreshhold, inDivisor, inMaxAlpha ){
	// Fadeout if final sequence is complete
	if obj_dk_frenzy.complete = true {
		inImage_alpha = inImage_alpha - (1/180)	
	} else if obj_dk_frenzy.spank_heat > inThreshhold {
		targetimagealpha = (obj_dk_frenzy.spank_heat + obj_dk_frenzy.spanks - inThreshhold) / inDivisor
		
		if targetimagealpha > inImage_alpha {
			inImage_alpha = inImage_alpha + 1/240
		} else if targetimagealpha < inImage_alpha {
			inImage_alpha = inImage_alpha - 1/240
		}	
		
		if inImage_alpha > inMaxAlpha {
			inImage_alpha = inMaxAlpha	
		}
	}
	return inImage_alpha
}