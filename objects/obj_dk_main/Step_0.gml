/// @description Steppy & DK been spanked

global_scr_inputGet(glo_controllerid);

if (glo_buttoneraise == true || glo_butttworaise == true)  {
	instance_deactivate_object(obj_ymsi);
	instance_deactivate_object(obj_once);
	//Spank left cheek	
	if glo_buttoneraise == true {
		//instance_create_layer(x + room_width*0.05,x - room_width*0.05,"Instances",obj_spank_left);
		scr_dk_doSpank(x,y,"left")
	}
	//Spank right cheek
	if glo_butttworaise == true {
		//instance_create_layer(x - room_width*0.05,x - room_width*0.05,"Instances",obj_spank_right);
		scr_dk_doSpank(x,y,"right")
	}
	// debounce check to allow a double spank
	if (debounce == false) {
		//If DK has been incorrectly spanked, add more context as to why the game is about to exit
		if self.image_index == 0 {
		   alarm[1] = 0.5 * room_speed;
		} 
		if (self.image_index == 1) {
			//DK has been correctly spanked	
			spanks += 1;                   //Increment spanks
			self.image_index = 0;   //DK no longer needs to indicate that he want's to be spanked
			obj_dk_reaction.image_index = 1;
			scr_dk_playGrunt();
			alarm[3] = room_speed * 1;
			alarm[0] = room_speed * 3;     //Wait 3 seconds + whatever random chance
			//Spank cooldown
			debounce = true;
			alarm[9] = room_speed * 0.3;   //Stop inputs for 0.3 seconds, revert indicator, allow double spanks
		}
	}
}
 