if sprite_index == sprEnemyTurret_Base_Destroyed{
	return;
}

instance_destroy(other);
effect_create_above(ef_explosion,x,y,1,c_white);

direction = random(360);

if sprite_index == sprEnemyTurret_Base{
		sprite_index = sprEnemyTurret_Base_Destroyed;
		obj_Game.points += 50;
}