/// @description find controller to be used

if global.glo_calibrationstate != "initial"{
	visible = false
}

for (i = 0; i < 10; i += 1) {
	global_scr_inputDetect(i)
}

