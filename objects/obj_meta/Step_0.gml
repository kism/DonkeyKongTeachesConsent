/// @description Insert description here
// You can write your code in this editor
if glo_failstate == true {
	url_open("https://www.fpnsw.org.au/health-information/consent-and-sex/consent-and-sex")
	game_end()
}

if glo_calibrationstate == "controller" {
	instance_deactivate_object(obj_calibrate)
}