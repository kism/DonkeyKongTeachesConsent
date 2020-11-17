/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_dk_frenzy) {
	self.depth = obj_dk_frenzy.depth
} else if instance_exists(obj_dk_main) {
	self.depth = obj_dk_main.depth
} else if instance_exists(obj_dk_inactive) {
	self.depth = obj_dk_inactive.depth
}