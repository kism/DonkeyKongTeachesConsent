/// @description Revert Reaction after spank, also for checking if spank threshold met for some reason

obj_dk_reaction.image_index = 0

// Check the spanks required to continue to the next phase
if spanks >= spanksrequired {
	instance_create_layer(room_width * 0.37, room_height/1.6, "Instances", obj_dk_frenzy)
	instance_deactivate_object(self)
}
