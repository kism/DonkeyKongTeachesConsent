/// @description Global states

if global.failstate == true {
	url_open("https://www.fpnsw.org.au/health-information/consent-and-sex/consent-and-sex")
	game_end()
}

// Yeah I regret this, I cant move it apparently
if global.calibrationstate == "controller" {
	instance_deactivate_object(obj_calibrate)
}