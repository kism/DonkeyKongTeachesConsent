/// @description Insert description here

if instance_exists(obj_dk_frenzy) {
	// Populate
	draw_set_font(font_UI)
	text = "frenzy: "

	// Misc
	if obj_dk_frenzy.frenzy == true {
		text = text + "true" + "\n" 
	} else {
		text = text + "false" + "\n" 
	}

	text = text + "spanks: " + string(obj_dk_frenzy.spanks) + "\n" 
	text = text + "spank_heat: " + string(obj_dk_frenzy.spank_heat) + "\n" 
	text = text + "spank_heat_min: " + string(obj_dk_frenzy.spank_heat_min) + "\n" 
	text = text + "spank_heat_new: " + string(obj_dk_frenzy.spank_heat_new) + "\n" 

	text = text + "spanks_now_declining: "
	if obj_dk_frenzy.spanks_now_declining == true {
		text = text + "true" + "\n" 
	} else {
		text = text + "false" + "\n" 
	}

	text = text + "spank_heat_target: " + string(obj_dk_frenzy.spank_heat_target) + "\n" 
	
	text = text + "complete: "
	if obj_dk_frenzy.complete == true {
		text = text + "true" + "\n" 
	} else {
		text = text + "false" + "\n" 
	}
	
	draw_text(self.x, self.y, text)
}