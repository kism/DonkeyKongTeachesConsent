/// @description Spank heat debug

bar = "#";

draw_set_font(font_UI);

var i;
for (i = 0; i < spank_heat; i += 1) {
	bar = string_insert("#",bar,0);
}

draw_text(20,20,bar);