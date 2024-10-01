if other.sprite_index == spr_enemy_turret_base
{
	instance_create_layer(x, y, "Instances", obj_explode_particle)
	instance_destroy(obj_thruster)
	obj_game.alarm[0] = 120
	instance_destroy();
}