/// @description Global states

if global.failstate == true {
	//url_open("https://www.fpnsw.org.au/health-information/consent-and-sex/consent-and-sex")
	url_open("https://www.police.govt.nz/advice-services/sexual-assault-and-consent")
	game_end()
}

if keyboard_check_pressed(vk_f11) || keyboard_check_pressed(ord("F")) {
        window_center();
        window_set_fullscreen(!window_get_fullscreen());
}

// TODO, FIX THIS GARBO LMAO
// Yeah I regret this, I cant move it apparently
if global.calibrationstate == "controller" {
	instance_deactivate_object(obj_calibrate_find_controller)
}