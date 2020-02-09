/// @description steppy

global_scr_inputGet(glo_controllerid)

//Fade in
if obj_dk_main.image_alpha < 1 {
	obj_dk_main.image_alpha += 0.0333;
}


if (glo_buttoneraise == true || glo_butttworaise == true)  {
	//Spank left cheek	
	if glo_buttoneraise == true {
		instance_create_layer(room_width/2.7,room_height/2,"Instances",obj_spank_left);
	}
	//Spank right cheek
	if glo_butttworaise == true {
		instance_create_layer(room_width/2.4,room_height/1.9,"Instances",obj_spank_right);
	}
	
	// debounce check to allow a double spank
	if (debounce == false) {
		//If DK has been incorrectly spanked
		if obj_dk_main.image_index == 0 {
		   alarm[1] = 0.5 * room_speed;
		} 
		if (obj_dk_main.image_index == 1) {
			//DK has been correctly spanked	
			spanks += 1;                   //Increment spanks
			obj_dk_main.image_index = 0;   //DK no longer needs to indicate that he want's to be spanked
			alarm[0] = room_speed * 2      //Wait 2 seconds + whatever random chance
			//Spank cooldown
			debounce = true;
			alarm[9] = room_speed * 0.3;   //Stop inputs for 0.3 seconds, revert indicator, allow double spanks
		}
	}
}
 