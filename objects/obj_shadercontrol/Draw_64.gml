/// @description Insert description here
// You can write your code in this editor

shader_set(shd_finalseq);
shader_set_uniform_f(uniTime, current_time);
draw_surface(application_surface, 0,0);
shader_reset();