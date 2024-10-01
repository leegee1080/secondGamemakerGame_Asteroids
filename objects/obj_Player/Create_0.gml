move_speed = 0.1;
is_boosting = false;
is_shooting = false;
turn_speed_normal = 0.1;
turn_speed_shooting = 0.01;
turn_tolerance = 5;
shoot_speed = 10;
gun_offset_x = 50
gun_offset_y = -50

main_sprite = spr_player_ship_light;
turn_sprite = spr_player_ship_light_tilt;

ps_array = part_system_create_layer("Particles",false,ps_booster)