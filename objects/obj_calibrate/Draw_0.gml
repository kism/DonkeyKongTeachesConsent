/// @description list controllers

self.x = 20
self.y = 20

// Populate
draw_set_font(font_UI)

foundone = false
text = "Controllers found:\n"

for (i = 0; i < 50; i += 1) {
	if gamepad_is_connected(i) == true {
		foundone = true
		text = text + " " + gamepad_get_description(i) + "\n" 
	} else {
		// text = text + string(i) + ": Not found!" + "\n"
	}
}

draw_text(self.x, self.y, text)

