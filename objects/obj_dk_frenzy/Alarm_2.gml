/// @description Spank Acceleration

spank_heat_new = (spank_heat - (spank_heat / 2));

if spank_heat_new > spank_heat_min {
	spank_heat_min = spank_heat_new;	
}

//Update Heat
spank_heat += (spanks - 1)

if spanks == 0 {
	spank_heat += -7
	if spanks_now_declining == false {
		spanks_now_declining = true;
   }
} else {
	spanks_now_declining = false;
}

//Don't hit zero
if spank_heat < spank_heat_min {
	spank_heat = spank_heat_min;	
}

spanks = 0;

//Make sure this is the last line lol
alarm[2] = room_speed * 0.6;