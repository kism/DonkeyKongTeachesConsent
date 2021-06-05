/// @description fade out

if global.fadetogame == true {
	if obj_title_background.image_alpha > -1 {
		obj_title_background.image_alpha -= 0.005
	} else {
		instance_deactivate_object(self)
	}
}