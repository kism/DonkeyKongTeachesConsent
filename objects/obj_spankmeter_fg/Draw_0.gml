/// @description yeah I think this should go in the draw layer

if instance_exists(obj_dk_frenzy) {
	// So as you may know, spanks are tallied every second? or something so I can figure out the spank acceleration
	// Issue is that the spanks in every acceleration cycle dont get captured since they arent added to spank_heat
	// at the end of each spank acceleration cycle.
	// I could simply add the two together but I set maximum spanks per cycle (that are actually counted)
	// so that the game isnt over too quickly if many people are mashing on one controller (sorry speedrunners).
	// I grab the spanks in the spank cycle and then subtract any over the maximum per cycle.

	if obj_dk_frenzy.spanks > obj_dk_frenzy.spanks_max_per_cycle {
		extraspanks = obj_dk_frenzy.spanks_max_per_cycle
	} else {
		extraspanks = obj_dk_frenzy.spanks
	}

	target = (((obj_dk_frenzy.spank_heat + extraspanks) / obj_dk_frenzy.spank_heat_target) * obj_spankmeter_bg.sprite_width)

	if (spankness < target) {
		spankness += abs(spankness - target) * 0.04
	} else {
		spankness -= abs(spankness - target) * 0.04
	}

	draw_sprite_part_ext(spr_spankmeter_fg, 0, 0, 0, spankness, obj_spankmeter_bg.sprite_height, (obj_spankmeter_bg.x - obj_spankmeter_bg.sprite_width / 2), (obj_spankmeter_bg.y - obj_spankmeter_bg.sprite_height / 2), 1, 1, c_white, obj_spankmeter_bg.image_alpha)
}