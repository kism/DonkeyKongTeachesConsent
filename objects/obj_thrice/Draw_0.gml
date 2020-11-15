/// @description Text

//xo = room_width/4
y = room_height/2

//Populate

draw_set_font(font_Thrice);

text      = "One!"
texttwo   = "Two!"
textthree = "Three!"
middleishpoint = room_height*0.4
offset = room_height*0.25

depth = 2

if  glo_calibrationstate != "transition"{
	if (hits > 0 && hits < 5){
		draw_text(room_width/8,middleishpoint - offset,text);
	}
	if (hits > 1 && hits < 5){
		draw_text(room_width/8,middleishpoint,texttwo);	
	}
	if (hits > 2 && hits < 5){
		draw_text(room_width/8,middleishpoint + offset,textthree);
		glo_calibrationstate = "transition"
		alarm[4] = room_speed * 2.2
	}
} else {
	draw_text(room_width/8,middleishpoint - offset,text);
	draw_text(room_width/8,middleishpoint,texttwo);	
	draw_text(room_width/8,middleishpoint + offset,textthree);
}
//draw_text(x,x,text);