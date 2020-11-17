// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dk_createfeet() {
	//Create feet layer at same depth as DK
	instance_create_layer(self.x - room_width * 0.02, self.y + room_height * 0.40, "instances", obj_dk_feet)
	//Create bridge cutout one layer above dk, its structured to only partially cover his right arm and feet
	instance_create_layer( 0, 0,"instances", obj_bg_cutout)
}