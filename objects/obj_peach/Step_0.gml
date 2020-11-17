/// @description Insert description here
// You can write your code in this editor

if (self.phy_angular_velocity < 10 && 
	self.phy_angular_velocity > -10 && 
	self.phy_angular_velocity != 0 &&
	glo_calibrationstate == "transitionend") {
	self.phy_angular_velocity = random_range(-100, 100)
}