/// @description steppy

if obj_dk_main.image_alpha < 1 {
	obj_dk_main.image_alpha += 0.0333;
}

if (glo_buttoneraise == true) {
	obj_dk_main.image_alpha = 0
}

if (glo_butttworaise == true) {
	obj_dk_main.image_alpha = 0
}


if (obj_dk_main.image_index == 1) && (glo_buttoneraise == true || glo_butttworaise == true) {
	obj_dk_main.image_index = 0;
}

 