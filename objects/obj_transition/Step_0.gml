/// @description Insert description here
// You can write your code in this editor

/*if point_distance(x, y, 0, 0) != 0 {
    move_towards_point(0,0,30);
	show_debug_message(string(point_distance(x, y, 0, 0)));
} else {
	speed = 0;
}*/



if x > - 1920 {
	x = x - 20
}

if x > - 30 && x < 30 {
	if instance_exists(obj_thrice) {
		instance_deactivate_object(obj_thrice)
	}
	
	if !instance_exists(obj_desk) {
		instance_create_depth(960,room_height * 0.7,2,obj_desk)
	}
	
	if !instance_exists(obj_title) {
		instance_create_depth(960,room_height * 0.3,2,obj_title)
	}
	
}