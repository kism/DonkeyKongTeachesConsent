/// @description Fade in & friends


if fadeout == true {	
	if instance_exists(obj_dk_reaction_big) {
		obj_dk_reaction_big.fadeout = true
	}
} else {
	if !(instance_exists(obj_dk_frenzy)) {
		// Fade back in if the spank heat drops
		if self.image_alpha < 1 {
			self.image_alpha += 0.015
		}
	} else {
		if obj_dk_frenzy.fadeoutbigraction == true {
			fadeout = true
		}
	
		self.image_alpha = scr_get_final_fadeout(self.image_alpha)
	
		if instance_exists(obj_dk_reaction_big) {
			//Puppet the big reaction
			obj_dk_reaction_big.image_index = self.image_index
			obj_dk_reaction_big.image_alpha = 1 - self.image_alpha
		}
	}
}




