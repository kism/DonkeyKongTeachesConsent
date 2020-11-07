// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_get_final_transparency(inImage_alpha, inThreshhold, inDivisor, inMaxAlpha ){
	if argument_count = 3 {
		inMaxAlpha = 0.75;
	}

	if obj_dk_frenzy.complete = true {
		inImage_alpha = inImage_alpha - (1/180);	
	} else if obj_dk_frenzy.spank_heat > inThreshhold {
		targetimagealpha = (obj_dk_frenzy.spank_heat + obj_dk_frenzy.spanks - inThreshhold) / inDivisor;
		
		if targetimagealpha > inImage_alpha {
			inImage_alpha = inImage_alpha + 1/240;
		} else if targetimagealpha < inImage_alpha {
			inImage_alpha = inImage_alpha - 1/240;
		}	
		
		if inImage_alpha > inMaxAlpha {
			inImage_alpha = inMaxAlpha;	
		}
	}
	return inImage_alpha;
}