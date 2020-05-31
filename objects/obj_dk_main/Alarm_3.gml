/// @description Revert Reaction after spank
// You can write your code in this editor

obj_dk_reaction.image_index = 0;

if spanks > 6 {
	instance_deactivate_object(self)
	instance_create_layer(0,0,"Instances",obj_dk_frenzy)
}
