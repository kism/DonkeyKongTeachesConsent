/// @description fade out

if instance_exists(obj_dk_frenzy) {
	if obj_dk_frenzy.fadeoutbigraction == true {
		fadeout = true
	}
}

if fadeout == true  {	
	if self.image_alpha > 0 {
		self.image_alpha -= 0.03
	} else {
		instance_deactivate_object(self)
	}	
}