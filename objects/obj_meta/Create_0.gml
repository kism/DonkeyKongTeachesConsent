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
// Hack in multipress
global.buttonemulti = false
global.butttwomulti = false

// States
global.failstate = false
global.calibrationstate = "initial"
global.fadetogame = "false"

// - - - - - - - - - - - - - - - - - - - - 

// Prerelease, sets the prerelease watermark
global.prerelease = true
// The debug parameter will shown the debug hud during the frenzy
// plus make the main phase only require one spank
global.debug = false

if global.prerelease == false {
	self.visible = false	
} else {
	self.visible = true
	self.x = room_width * 0.01
	self.y = room_height * 0.95
	self.depth = -6969
}