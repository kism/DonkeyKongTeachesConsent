/// @description Insert description here



if instance_exists(obj_dk_frenzy) {
	if obj_dk_frenzy.complete == true {
		instance_deactivate_object(self)	
	} else {
		shader_set(shd_finalseq)
		shader_set_uniform_f(uniTime, current_time)
		draw_surface(application_surface, 0, 0)
		shader_reset()
	}
}
	
