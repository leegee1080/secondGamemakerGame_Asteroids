/// @desc follow player
image_angle = obj_Player.image_angle;
x = obj_Player.x;
y = obj_Player.y;


if obj_Player.is_boosting{
	image_xscale = 1;
	image_yscale = 1;
}else{
	image_xscale = 0.5;
	image_yscale = 0.5;
}