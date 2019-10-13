/// @description Insert description here
// You can write your code in this editor

draw_set_font(font_Calibration);
draw_text(room_width*0.06,room_height*0.3,"Press a button\non the controller\nthat you want to use")

if glo_calibrationstate != "initial"{
	visible = false;
}