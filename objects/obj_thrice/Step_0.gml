/// @description Insert description here
// You can write your code in this editor

if glo_calibrationstate == "calibrated" || glo_calibrationstate == "transition"{
	visible = true;
	if glo_buttoneraise == true {
		alarm[0] = room_speed * 0.06;
		buttononecountdown = true;
	}
	if glo_butttworaise == true {
		alarm[1] = room_speed * 0.06;
		buttontwocountdown = true;
	}
	if  buttononecountdown && buttontwocountdown && debounce == false{
		debounce = true;
		alarm[2] = room_speed * 0.1;
		hits += 1;
		alarm[3] = room_speed * 0.5;
	}
} else {
	visible = false;
}



