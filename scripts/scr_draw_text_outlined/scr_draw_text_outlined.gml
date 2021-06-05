function scr_draw_text_outlined(inX, inY, inOutlineColor, inStringColour, inString) {
	//Outline  
	draw_set_color(inOutlineColor);
	draw_text(inX+1, inY+1, inString);
	draw_text(inX-1, inY-1, inString);
	draw_text(inX,   inY+1, inString);
	draw_text(inX+1,   inY, inString);
	draw_text(inX,   inY-1, inString);
	draw_text(inX-1,   inY, inString);
	draw_text(inX-1, inY+1, inString);
	draw_text(inX+1, inY-1, inString);
	//Text  
	draw_set_color(inStringColour);
	draw_text(inX, inY, inString);
}