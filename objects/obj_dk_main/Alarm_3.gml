/// @description Revert Reaction after spank, also for checking if spank threshold met for some reason
// You can write your code in this editor

obj_dk_reaction.image_index = 0;

if spanks > 1 {
	instance_deactivate_object(self)
	instance_create_layer(0,0,"Instances",obj_dk_frenzy)
}
