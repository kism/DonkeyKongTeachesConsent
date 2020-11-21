/// @description Fade in & friends

if !(instance_exists(obj_dk_frenzy)) {
	if self.image_alpha < 1 {
		self.image_alpha += 0.015
	}
} else {
	self.image_alpha = scr_get_final_fadeout(self.image_alpha)
	
	//Puppet the big reaction
	obj_dk_reaction_big.image_index = self.image_index
	obj_dk_reaction_big.image_alpha = 1 - self.image_alpha
}
