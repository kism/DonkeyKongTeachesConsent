/// @description find controller to be used

if glo_calibrationstate != "initial"{
	visible = false;
}

i = 0

for (i = 0; i < 10; i += 1) {
	global_scr_inputDetect(i);
}

