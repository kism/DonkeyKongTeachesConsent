/// @description Spank Acceleration

// This some spank math

// Set max spanks per cycle
if spanks > spanks_max_per_cycle {
	spanks = spanks_max_per_cycle
}

spank_heat_new = (spank_heat - (spank_heat / 2))

if spank_heat_new > spank_heat_min {
	spank_heat_min = spank_heat_new	
}

// Update Heat
spank_heat += spanks

//If there were no spanks in the last cycle, start declining
if spanks == 0 {
	spank_heat += -7
	if spanks_now_declining == false {
		spanks_now_declining = true
   } else {
		// Prevent an integer overflow kappa
		if cycles_without_spanks < 100 { 
			cycles_without_spanks += 1
		}
   }
} else {
	// Spanks have started again
	cycles_without_spanks = 0
	spanks_now_declining  = false
}

// Don't hit zero
if spank_heat < spank_heat_min {
	spank_heat = spank_heat_min	
}

spanks = 0

// Make sure this is the last line lol
self.alarm[2] = room_speed * 0.6