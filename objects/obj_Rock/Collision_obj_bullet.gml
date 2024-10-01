if sprite_index == spr_enemy_turret_base_destroyed{
	return;
}
instance_create_layer(x, y, "Instances", obj_explode_particle)
instance_destroy(other);
effect_create_above(ef_explosion,x,y,1,c_white);

direction = random(360);

if sprite_index == spr_enemy_turret_base{
		sprite_index = spr_enemy_turret_base_destroyed;
		obj_game.points += 50;
}