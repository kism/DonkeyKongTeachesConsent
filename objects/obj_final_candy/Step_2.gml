/// @description Move to orbital point

if (obj_dk_frenzy.spank_heat > (obj_dk_frenzy.spank_heat_target * 0.6) || orbit == true) {
	orbit = true

	// Orbit
	angle += room_width * 0.00042 * (60 / room_speed)
	if (angle >= 360) {
		angle -= 360
	}

	xytarget = scr_orbit_do(angle)
	
	xyarr = scr_orbit_goto(self.x, self.y, xytarget)

	self.x = xyarr[0]
	self.y = xyarr[1]
}