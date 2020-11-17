/// @description everything happens here

// GitExtensions confuses me

self.alarm[0] = room_speed * 10

switch (irandom(5)) {   
	case 1:
		self.image_index = 0 break
	case 2:
		self.image_index = 1 break
	case 3:
		self.image_index = 2 break
	case 4:
		self.image_index = 3 break
	case 5:
		self.image_index = 4 break
	case 6:
		self.image_index = 5 break
	default:
		self.alarm[0] = 0 break // Don't question
 }
 
if (x > (room_width / 2)) {
	self.phy_linear_velocity_x = random_range(-300, -1000)
} else {
	self.phy_linear_velocity_x = random_range(300, 1000)
}
self.phy_linear_velocity_y = random_range(-50,-2000)

self.y = random_range(0,room_height/2.5)
 
// Rotation
if random_range(0,100) > 50 {
	self.phy_rotation = random_range(100,50)

} else {
	self.phy_rotation = random_range(-100,-50)
}

// Add rotation
self.phy_angular_velocity = random_range(-150,150)

// Make stacking a bit nicer
self.depth = random_range(-10,-20)
