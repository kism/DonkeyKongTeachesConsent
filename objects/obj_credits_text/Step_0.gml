/// @description Just fade in really


if obj_credits_text.image_alpha < 1 {
	obj_credits_text.image_alpha += 0.01;
}

if exitready == true {
	// Poll for inputs that arent the calibrated buttons
	for (j = 0; j < 127; j += 1) { //For the weirdo that has some device that maxes out the standard
		// If the we are checking is not calibrated
		if (j != glo_buttononemap && j != glo_buttononealtmap && j != glo_buttontwomap && j != glo_buttontwoaltmap) {
			// And is being pressed
			if gamepad_button_check(glo_controllerid,j) {
				// End the game	
				game_end()
			}
		}
	}
}