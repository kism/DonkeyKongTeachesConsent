/// @description Fade in & friends

if !(instance_exists(obj_dk_frenzy)) {
	if self.image_alpha < 1 {
		self.image_alpha += 0.015
	}
} else {
	//Fade out at the half way point
	if (obj_dk_frenzy.spank_heat > (obj_dk_frenzy.spank_heat_target / 2) && self.image_alpha > 0) {
		self.image_alpha = self.image_alpha - 1/240
	} else if (obj_dk_frenzy.spank_heat < (obj_dk_frenzy.spank_heat_target / 2) && self.image_alpha < 1) {
		self.image_alpha = self.image_alpha + 1/240
	}
	
	//Puppet the big reaction
	obj_dk_reaction_big.image_index = self.image_index
	obj_dk_reaction_big.image_alpha = 1 - self.image_alpha
}
