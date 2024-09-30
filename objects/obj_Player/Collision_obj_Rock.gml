if other.sprite_index == sprEnemyTurret_Base
{
	effect_create_above(ef_firework,x,y,1,c_white);
	obj_Game.alarm[0] = 120
	instance_destroy();
}