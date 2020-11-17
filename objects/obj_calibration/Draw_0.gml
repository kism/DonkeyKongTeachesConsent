/// @description Draw calibration text

draw_set_font(font_Calibration)
draw_set_colour($FFFFFF)
draw_text(room_width*0.06, room_height*0.3, "Press a button\non the controller\nthat you want to use")

if global.calibrationstate != "initial"{
	visible = false
}