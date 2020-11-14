// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dk_doSpank(inx,iny,inCheek){

	scr_dk_playSpank();

	if inCheek == "left" {
		instance_create_layer(inx + room_width*0.05,iny + room_width*0.05,"Instances",obj_spank_left);
		scr_dk_playSpank();
	}
	//Spank right cheek
	if inCheek == "right" {
		instance_create_layer(inx - room_width*0.05,iny + room_width*0.05,"Instances",obj_spank_right);
		scr_dk_playSpank();
	}

}