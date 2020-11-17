/// @description Fade in depending on heat

xytarget = []

// fade in
self.image_alpha = scr_get_final_transparency(self.image_alpha, threshhold, divisor, maxalpha)