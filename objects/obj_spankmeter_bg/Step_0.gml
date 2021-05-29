/// @description steppy

if instance_exists(obj_dk_frenzy) {
	if obj_dk_frenzy.cycles_without_spanks > 5 {
		displayspankmeter = true
	}	
}

// So this will controlo the fade in if the player hasnt spanked for a while
if self.image_alpha < 1 && displayspankmeter == true {
	self.image_alpha += 0.01
}
