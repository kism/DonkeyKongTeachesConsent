/// @description Debug Text

// Set this global in the meta object
if global.debug == false {
	instance_deactivate_object(self)
} else {
	//self.visible = true
}

text = "- DEBUG -" + "\n"

if instance_exists(obj_meta) {
	text = text + "Game State: " + global.calibrationstate + "\n"
}

if instance_exists(obj_dk_main) {
	text = text + "n delays: " + string(obj_dk_main.delays) + "\n"
	text = text + "spanks: " + string(obj_dk_main.spanks) + "\n"
	text = text + "spanks required: " + string(obj_dk_main.spanksrequired) + "\n"
	text = text + "debounce: " + string(obj_dk_main.debounce) + "\n"
}

if instance_exists(obj_dk_frenzy) {
	// Populate
	draw_set_font(font_UI)
	text = text + "Frenzy: " 

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
	
	text = text + "Spankmeter target:    " + string(obj_spankmeter_fg.target) + "\n"
	text = text + "Spankmeter spankness: " + string(obj_spankmeter_fg.spankness) + "\n"
}

draw_text(self.x, self.y, text)