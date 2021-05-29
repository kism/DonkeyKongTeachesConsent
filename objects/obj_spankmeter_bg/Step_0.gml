/// @description steppy

if instance_exists(obj_dk_frenzy) {
	if obj_dk_frenzy.cycles_without_spanks > 5 {
		fadein = true
	}	

	// So this will controlo the fade in if the player hasnt spanked for a while
	if self.image_alpha < 1 && fadein == true && fadeout == false {
		self.image_alpha += 0.01
	}

	// Fadeout if frenzy is complete
	if self.image_alpha > 0 && obj_dk_frenzy.complete == true {
		self.image_alpha += 0.01
	}
}