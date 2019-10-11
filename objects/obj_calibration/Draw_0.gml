/// @description Insert description here
// You can write your code in this editor

draw_set_font(font_Calibration);
draw_text(room_width/3,room_height/1.2,"Calibration")

if glo_calibrationstate != "initial"{
	visible = false;
}