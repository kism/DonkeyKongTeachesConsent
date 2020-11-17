/// @description Fade in depending on heat

threshhold = 8
divisor = 35
maxalpha = 0.75

self.image_alpha = scr_get_final_transparency(self.image_alpha, threshhold, divisor, maxalpha)