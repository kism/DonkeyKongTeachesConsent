/// @description fade out


if glo_fadetogame == true {
	if obj_bluebg.image_alpha > -1 {
		obj_bluebg.image_alpha -= 0.0025;
	} else {
		instance_deactivate_object(self)
	}
}