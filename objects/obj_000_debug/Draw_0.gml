/// @description Debug Text

text = "- DEBUG -" + "\n"

if instance_exists(obj_000_meta) {
	text = text + "Game State: " + global.calibrationstate + "\n"
}

if instance_exists(obj_startgame) {
	text = text + "ready: "
	if obj_startgame.ready {
		text = text + "true" + "\n" 
	} else {
		text = text + "false" + "\n" 
	}
	
	text = text + "start game : " 
	if obj_startgame.startgame {
		text = text + "true" + "\n" 
	} else {
		text = text + "false" + "\n" 
	}
}

if global.calibrationstate == "game" || global.calibrationstate == "credits" || (instance_exists(obj_startgame) && global.calibrationstate == "transition_end" && obj_startgame.ready) {
	text = text + "Input: " + string(global.buttoneprevstate_primary) + "," + string(global.buttoneprevstate_alternate) + "," + string(global.butttwoprevstate_primary) + "," + string(global.butttwoprevstate_alternate) + "\n"
	text = text + "Queue: " + string(global.buttonemulti) + "," + string(global.butttwomulti)
}

if instance_exists(obj_dk_main) {
	text = text + "n delays: " + string(obj_dk_main.delays) + "\n"
	text = text + "spanks: " + string(obj_dk_main.spanks) + "/" + string(obj_dk_main.spanksrequired) + "\n"
	
	text = text + "consent:  "
	if obj_dk_main.image_index == 1{
		text = text + "true" + "\n" 
	} else {
		text = text + "false" + "\n" 
	}
	
	text = text + "debounce: "
	if obj_dk_main.debounce {
		text = text + "true" + "\n" 
	} else {
		text = text + "false" + "\n" 
	}
	
	text = text + "failure:  "
	if obj_dk_main.incorrectspank {
		text = text + "true" + "\n" 
	} else {
		text = text + "false" + "\n" 
	}
}

if instance_exists(obj_dk_frenzy) {
	text = text + "Frenzy: " 
	if obj_dk_frenzy.frenzy == true {
		text = text + "true" + "\n" 
	} else {
		text = text + "false" + "\n" 
	}
	
	text = text + "complete: "
	if obj_dk_frenzy.complete == true {
		text = text + "true" + "\n" 
	} else {
		text = text + "false" + "\n" 
	}

	text = text + "spanks: " + string(obj_dk_frenzy.spanks) + "\n" 
	text = text + "spank_heat: " + string(floor(obj_dk_frenzy.spank_heat)) + "/" + string(obj_dk_frenzy.spank_heat_target) + "\n" 
	text = text + "spank_heat_min: " + string(obj_dk_frenzy.spank_heat_min) + "\n" 
	text = text + "spank_heat_new: " + string(obj_dk_frenzy.spank_heat_new) + "\n" 

	text = text + "spanks_now_declining: "
	if obj_dk_frenzy.spanks_now_declining == true {
		text = text + "true" + "\n" 
	} else {
		text = text + "false" + "\n" 
	}
	
	text = text + "cycles_without_spanks: " + string(obj_dk_frenzy.cycles_without_spanks) + "\n"
}

if instance_exists(obj_spankmeter_bg) {
	text = text + "Spankmeter visable:   "
	if obj_spankmeter_bg.fadein {
		text = text + "true" + "\n" 
	} else {
		text = text + "false" + "\n" 
	}
}

if instance_exists(obj_spankmeter_fg) {
	text = text + "Spankmeter target:    " + string(obj_spankmeter_fg.target) + "\n"
	text = text + "Spankmeter spankness: " + string(obj_spankmeter_fg.spankness) + "\n"
}

// Actually draw
draw_set_font(font_UI)
scr_draw_text_outlined(self.x, self.y,c_black,c_white, text)