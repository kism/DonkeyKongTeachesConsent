/// @description Text

//xo = room_width/4
y = room_height/2

//Populate

draw_set_font(font_Thrice);

text      = "One!"
texttwo   = "Two!"
textthree = "Three!"
middleishpoint = room_height/2.5
offset = room_height/4

//draw_set_font(font_UI);
//text = "Hits: " + string(hits)
//text = text + "\nLeft  Timer:" + string(buttononecountdown)
//text = text + "\nRight Timer:" + string(buttontwocountdown)
//text = text + "\nDebou Timer:" + string(debounce)


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
		alarm[4] = room_speed * 2.5
		if !instance_exists(obj_transition){
			instance_create_layer(0,1,"Instances",obj_transition)
		}
	}
} else {
	draw_text(room_width/8,middleishpoint - offset,text);
	draw_text(room_width/8,middleishpoint,texttwo);	
	draw_text(room_width/8,middleishpoint + offset,textthree);
}
//draw_text(x,x,text);