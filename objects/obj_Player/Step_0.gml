var _dir = point_direction(x, y, mouse_x, mouse_y);
var _diff = angle_difference(_dir, image_angle);
image_angle += _diff * turn_speed;
if _diff > turn_tolerance or _diff < -turn_tolerance{
	sprite_index = turn_sprite
	if _diff > 0{
		image_yscale = 1;
	}
	if _diff < 0{
		image_yscale = -1;
	}
}else{
	sprite_index = main_sprite;
	image_yscale = 1;
}


move_wrap(true,true,100);

if mouse_check_button(mb_left){
	is_shooting = true;
	if alarm_get(0) <= 0{
		instance_create_layer(x,y,"Instances",obj_bullet);	
		alarm[0] = shoot_speed;
	}
}