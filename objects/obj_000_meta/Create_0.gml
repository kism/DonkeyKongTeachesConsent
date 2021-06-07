/// @description G L O B A L S

// PRERELEASE: Sets the prerelease watermark
// DEBUG: Parameter will shown the debug hud during the frenzy
// plus make the main phase only require one spank
global.prerelease = true
global.debug = true

if !instance_exists(obj_000_debug) && global.debug == true {
	instance_create_layer(0, 0, "Instances", obj_000_debug)
}

if global.prerelease == false {
	self.visible = false	
} else {
	self.visible = true
	self.x = room_width * 0.01
	self.y = room_height * 0.95
	self.depth = -6969
}

// - - - - - - - - - - - - - - - - - - - - 

// Controllers
global.controllerid = 0

// Buttons
global.buttoneraise     = false
global.buttoneprevstate_primary   = false
global.buttoneprevstate_alternate = false
global.buttononemap     = -1
global.buttononealtmap  = -1
global.butttworaise     = false
global.butttwoprevstate_primary   = false
global.butttwoprevstate_alternate = false
global.buttontwomap     = -1
global.buttontwoaltmap  = -1
// Hack in multipress
global.buttonemulti = 0
global.butttwomulti = 0

// States
global.failstate = false
global.calibrationstate = "initial"
global.fadetogame = "false"