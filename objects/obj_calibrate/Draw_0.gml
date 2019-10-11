/// @description Insert description here
// You can write your code in this editor

x = 20
y = 20

//Populate
draw_set_font(font_UI);

foundone = false;
text = "Press any button on the controller that you want to use\n"

var i;
for (i = 0; i < 50; i += 1) {
	text = text + "  ";
	if i < 10 {
		text = text + " ";
	}
	if gamepad_is_connected(i) == true {
		foundone = true;
		text = text + string(i) + ": Found!: " + gamepad_get_description(i) + "\n" ;
	} else {
		text = text + string(i) + ": Not found!" + "\n";
	}
}

draw_text(x,y,text);