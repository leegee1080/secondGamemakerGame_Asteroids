/// @desc follow player
if(obj_player == noone){
	instance_destroy()	
}

image_angle = obj_player.image_angle;
x = obj_player.x;
y = obj_player.y;


if obj_player.is_boosting{
	image_xscale = 1;
	image_yscale = 1;
}else{
	image_xscale = 0.5;
	image_yscale = 0.5;
}