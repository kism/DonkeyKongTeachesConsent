/// @description init

if instance_exists(obj_dk_main) {
	alarm[0] = 0.3 * room_speed;
} else {
	//Short animation during final sequence
	alarm[0] = 0.1 * room_speed;
}

depth = -10;

instance_create_depth(x,y,-9,obj_star)