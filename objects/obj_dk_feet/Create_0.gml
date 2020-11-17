/// @description Insert description here

if instance_exists(obj_dk_frenzy) {
	self.depth = obj_dk_frenzy.depth
} else if instance_exists(obj_dk_main) {
	self.depth = obj_dk_main.depth
} else if instance_exists(obj_dk_inactive) {
	self.depth = obj_dk_inactive.depth
}