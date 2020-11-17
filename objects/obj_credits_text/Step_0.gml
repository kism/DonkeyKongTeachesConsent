/// @description Just fade in really

if self.image_alpha < 1 {
	self.image_alpha += 0.01
}

if exitready == true {
	// Poll for inputs that arent the calibrated buttons
	for (j = 0; j < 127; j += 1) { // For the weirdo that has some device that maxes out the standard
		// If the we are checking is not calibrated
		if (j != global.buttononemap && j != global.buttononealtmap && j != global.buttontwomap && j != global.buttontwoaltmap) {
			// And is being pressed
			if gamepad_button_check(global.controllerid,j) {
				// End the game	
				game_end()
			}
		}
	}
}