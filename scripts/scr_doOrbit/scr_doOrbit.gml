// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_doOrbit(inAngle){
	result = []
	
	radius = 900
		
	// Update position
	result[0] = lengthdir_x(radius, inAngle) + obj_dk_reaction_big.x
	result[1] = lengthdir_y(radius, inAngle) + obj_dk_reaction_big.y

	return result
}