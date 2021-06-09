/// @description Fade in depending on heat

// fade in
if orbit = false || (instance_exists(obj_dk_frenzy) && obj_dk_frenzy.complete == true) {
	self.image_alpha = scr_get_final_transparency(self.image_alpha, threshhold, divisor, maxalpha)
} else if instance_exists(obj_dk_reaction_big) {
	//Fade in
	if self.image_alpha > obj_dk_reaction_big.image_alpha - (1 - maxalpha) {
		self.image_alpha -= 0.003
	} else {
		self.image_alpha += 0.003
	}
}