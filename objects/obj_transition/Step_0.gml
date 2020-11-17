/// @description Create TITLE SCREEN!

if x > - 2000 {
	x = x - 20
} else {
	if !instance_exists(obj_startgame) {
		instance_create_depth(0,0,3,obj_startgame)
		obj_startgame.alarm[0] = room_speed * 3
	}		
}

if x > - 30 && x <= 0 {
	global.glo_calibrationstate = "transitionend"
	if !instance_exists(obj_desk) {
		instance_create_depth(room_width/2,room_height * 0.7,2,obj_desk)
	}
	if !instance_exists(obj_title) {
		instance_create_depth(room_width/2,room_height * 0.3,2,obj_title)
	}
	if !instance_exists(obj_titlescreenspawner) {
		instance_create_depth(0,0,0,obj_titlescreenspawner)
	}
	if !instance_exists(obj_bluebg) {
		instance_create_depth(0,0,3,obj_bluebg)
	}	
	physics_world_gravity(0,0)
}

if x <= - 1920 {
	if instance_exists(obj_thrice) {
		instance_deactivate_object(obj_thrice)
	}
}

