var _sprint = keyboard_check(vk_lshift);
if (_sprint = 1)
{
	my_sprint = 2;
} 
else {
	my_sprint = 0;
}
my_move = my_speed + my_sprint;

// Tastenabfrage
var _xinput = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _yinput = keyboard_check(ord("S")) - keyboard_check(ord("W"));

move_and_collide(_xinput * my_move, _yinput * my_move, obj_grass_ground, 4, 0, 0, my_move, my_move);

xpos = inst_7A16687B.x;
xm = mouse_x



// Animation basierend auf der Bewegungsrichtung
if (xpos - xm > 0 && _yinput != 0 || _xinput = -1) {
    // Run Left
    sprite_index = sMage_run_left;  
    image_speed = 0.5;
		
	
} else if (xpos - xm < 0 && _yinput != 0 || _xinput = 1) {
    // Run Right
    sprite_index = sMage_run_right;  
    image_speed = 0.5;
	
} else {
	if (xpos - xm < 0) {
		sprite_index = sMage_Idle_right;  
		image_speed = 0.5;
	} else  {
		sprite_index = sMage_Idle_left;  
		image_speed = 0.5;
	}
}

// Ausgabe von Debug-Informationen
show_debug_message("X-Input: " + string(_xinput));
show_debug_message("Y-Input: " + string(_yinput));
show_debug_message("obj: " + string(xpos));
show_debug_message("mouse: " + string(xm));
show_debug_message("Move-Input: " + string(my_move));
show_debug_message("Current Position: (" + string(x) + ", " + string(y) + ")");