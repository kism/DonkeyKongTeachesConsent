function scr_orbit_goto(inX, inY, inXYTarget){
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