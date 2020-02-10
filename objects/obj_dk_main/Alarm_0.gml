/// @description DK wants a spank?

if random_range(0,10) >= 8 {
	preparespank = 1;
	alarm[2] = 1.8 * room_speed;
	instance_create_layer(room_width/3.9,room_height/3.7,"Instances",obj_ymsi);
} else {
	alarm[0] = 1 * room_speed;
}
