/// @description Fade out

threshhold = 1
divisor = 0.1

//image_alpha = scr_get_final_transparency(image_alpha, threshhold, divisor, 1)

self.image_alpha = scr_get_final_fadeout(self.image_alpha)