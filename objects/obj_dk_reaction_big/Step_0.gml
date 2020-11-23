/// @description Insert description here
// You can write your code in this editor

if fadeout == true {
	if self.image_alpha > 0 {
		self.image_alpha -= 0.02
	} else {
		instance_deactivate_object(self)
	}
}