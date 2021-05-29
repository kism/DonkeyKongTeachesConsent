/// @description yeah I think this should go in the draw layer

target = ((obj_dk_frenzy.spank_heat / obj_dk_frenzy.spank_heat_target) * obj_spankmeter_bg.sprite_width)

if (spankness < target) {
	spankness += abs(spankness - target) * 0.04
} else {
	spankness -= abs(spankness - target) * 0.04
}

draw_sprite_part(spr_spankmeter_fg, 0, 0, 0, spankness, obj_spankmeter_bg.sprite_height, (obj_spankmeter_bg.x - obj_spankmeter_bg.sprite_width / 2), (obj_spankmeter_bg.y - obj_spankmeter_bg.sprite_height / 2))