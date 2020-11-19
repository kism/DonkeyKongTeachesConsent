// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_goToOrbit(inX, inY, inXYTarget){
	pos = []
	
	xdistance = inXYTarget[0] - inX
	ydistance = inXYTarget[1] - inY

	if xdistance > 0 {
		pos[0] = inX + abs(xdistance * 0.01)
	} else {
		pos[0] = inX - abs(xdistance * 0.01)
	}
	
	if ydistance > 0 {
		pos[1] = inY + abs(ydistance * 0.01)
	} else {
		pos[1] = inY - abs(ydistance * 0.01)
	}	

	return pos
}