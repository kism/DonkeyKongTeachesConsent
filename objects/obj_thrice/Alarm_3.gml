/// @description Spawn the transition object

if !instance_exists(obj_transition) {
	instance_create_layer(self.x, self.y, "Instances", obj_transition)
}