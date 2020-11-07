/// @description Revert Reaction after spank, also for checking if spank threshold met for some reason
// You can write your code in this editor

obj_dk_reaction.image_index = 0;

if spanks > 1 {
	instance_create_layer(room_width/2.7,room_height/1.6,"Instances",obj_dk_frenzy)
	//instance_create_layer(room_width/4.1,room_height/1.6,"Instances",obj_bluebg)
	instance_deactivate_object(self)
}
