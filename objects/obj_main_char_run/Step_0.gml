var _xinput = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _yinput = keyboard_check(ord("S")) - keyboard_check(ord("W"));

move_and_collide(_xinput * my_speed, _yinput * my_speed, obj_grass_ground, 4, 0, 0, my_speed, my_speed);
