/// @description Acceleration




spank_heat_new = (spank_heat - (spank_heat / 10));

if spank_heat_new > spank_heat_min {
	spank_heat_min = spank_heat_new;	
}

spank_heat += (spanks - 2)

if spank_heat < spank_heat_min {
	spank_heat = spank_heat_min;	
}

spanks = 0;

draw_set_font(font_UI);
draw_text(20,20,string(spank_heat));

//Make sure this is the last line lol
alarm[2] = room_speed * 0.8;