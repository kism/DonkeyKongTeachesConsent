/// @description steppy

if instance_exists(obj_dk_frenzy) {
	if obj_dk_frenzy.cycles_without_spanks > 5 && obj_dk_frenzy.spank_heat > 10 {
		fadein = true
	}

	// So this will controlo the fade in if the player hasnt spanked for a while
	if self.y < room_height * target_y && fadein == true && fadeout == false {
		self.y += abs(room_height * target_y - self.y) * 0.01 + 2
	}

	// Fadeout if frenzy is complete
	if self.image_alpha > 0 && obj_dk_frenzy.complete == true {
		self.image_alpha -= 0.03
	}
}