/// @description Insert description here
// You can write your code in this editor

global_scr_inputGet(glo_controllerid);

if glo_buttoneraise == true {
	x = random_range(0,room_width/2)
	y = random_range(0,room_height/3)
	instance_create_layer(x,y,"Instances",obj_banana)
} 
	
if glo_butttworaise == true {
	x = room_width/2 + random_range(0,room_width/2)
	y = random_range(0,room_height/3)
	instance_create_layer(x,y,"Instances",obj_banana)
}
