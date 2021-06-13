function global_scr_inputDetectKeyboard() {
	if keyboard_check_pressed(vk_anykey) {
		obj_calibrateinputs.alarm[0] = room_speed * 0.5
		global.calibrationstate = "pause_before_controller"	
	}
}
