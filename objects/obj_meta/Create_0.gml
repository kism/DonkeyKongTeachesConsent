/// @description G L O B A L S

// Controllers
global.controllerid = 0

// Buttons
global.buttoneraise     = false
global.buttoneprevstate = false
global.buttononemap     = -1
global.buttononealtmap  = -1
global.butttworaise     = false
global.butttwoprevstate = false
global.buttontwomap     = -1
global.buttontwoaltmap  = -1

// States
global.failstate = false
global.calibrationstate = "initial"
global.fadetogame = "false"

// - - - - - - - - - - - - - - - - - - - - 

// Prerelease, set to false for release
global.prerelease = true
global.debug = false

if global.prerelease == false {
	self.visible = false	
} else {
	self.visible = true
	self.x = room_width * 0.01
	self.y = room_height * 0.95
	self.depth = -6969
}