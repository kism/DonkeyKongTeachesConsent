/// @description Init

self.depth = -1
self.image_alpha = 0
self.image_index = 0

//This is absolutely required for the correct physics and sounds to be made
global.glo_calibrationstate = "bepis"

//okay for exit, set alarm that will set to true
exitready = false
self.alarm[0] = 5 * room_speed