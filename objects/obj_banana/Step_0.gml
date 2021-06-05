/// @description keep banana spinning in transition_end phase

if (self.phy_angular_velocity < 10 && 
	self.phy_angular_velocity > -10 && 
	self.phy_angular_velocity != 0 &&
	global.calibrationstate == "transition_end") {
	self.phy_angular_velocity = random_range(-100,100)
}