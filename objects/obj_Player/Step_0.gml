var _dir = point_direction(x, y, mouse_x, mouse_y);
var _diff = angle_difference(_dir, image_angle);
if is_shooting{
	image_angle += _diff * turn_speed_shooting;
}else{
	image_angle += _diff * turn_speed_normal;
}
if _diff > turn_tolerance or _diff < -turn_tolerance{
	sprite_index = turn_sprite;
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
		var _bullet_spawn_x = x + gun_offset_x*dcos(image_angle) + gun_offset_x*dsin(image_angle);
		
		gun_offset_y = -gun_offset_y;
			
		var _bullet_spawn_y = y + gun_offset_y*dcos(image_angle) - gun_offset_y*dsin(image_angle);

		var _bullet = instance_create_layer(_bullet_spawn_x, _bullet_spawn_y, "Instances", obj_bullet);
		_bullet.direction = image_angle;
		_bullet.image_angle = image_angle;

		alarm[0] = shoot_speed;
	}
}else{
	is_shooting = false;
}

part_system_position(ps_array,x,y)
part_system_angle(ps_array,image_angle)

//if is_boosting{
//	image_xscale = 1;
//	image_yscale = 1;
//}else{
//	image_xscale = 0.5;
//	image_yscale = 0.5;
//}