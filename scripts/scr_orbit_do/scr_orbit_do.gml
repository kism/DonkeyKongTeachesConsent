// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_orbit_do(inAngle){
	result = []
	radius = 900
	
	if instance_exists(obj_dk_reaction_big) {
		// Update position
		result[0] = lengthdir_x(radius, inAngle) + obj_dk_reaction_big.x
		result[1] = lengthdir_y(radius, inAngle) + obj_dk_reaction_big.y
	} else {
		result[0] = room_width * 0.5
		result[1] = room_height * 0.5
	}
	
	return result
}