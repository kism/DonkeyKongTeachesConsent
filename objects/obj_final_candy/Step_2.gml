/// @description Move to orbital point

if (obj_dk_frenzy.spank_heat > (obj_dk_frenzy.spank_heat_target * 0.6)) {
	self.phy_active = true
	
	// Orbit
	angle += room_width * 0.00042 * (60 / room_speed)
	if (angle >= 360) {
		angle -= 360
	}

	xytarget = scr_doOrbit(angle)
	
	dir = point_direction(x,y,xytarget[0], xytarget[1])
	phy_speed_x = lengthdir_x(2,dir)
	phy_speed_y = lengthdir_y(2,dir)
	
	physics_apply_force(phy_position_x,phy_position_y,0,phy_mass*rm_Calibrate.gravity*-2) 

}