// Tastenabfrage
var _xinput = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _yinput = keyboard_check(ord("S")) - keyboard_check(ord("W"));
move_and_collide(_xinput * my_speed, _yinput * my_speed, obj_grass_ground, 4, 0, 0, my_speed, my_speed);



// Animation basierend auf der Bewegungsrichtung
if (_yinput != 0 || _xinput = -1) {
    // Run Left
    sprite_index = sMage_run_left;  
    image_speed = 1; 
} else if (_yinput != 0 || _xinput = 1) {
    // Run Right
    sprite_index = sMage_run_right;  
    image_speed = 1; 
} else {
    // Idle Animation
    sprite_index = sMage_Idle;  
    image_speed = 1; 
}




// Ausgabe von Debug-Informationen
show_debug_message("X-Input: " + string(_xinput));
show_debug_message("Y-Input: " + string(_yinput));
show_debug_message("Sprite_Index: " + string(sprite_index));
show_debug_message("Current Position: (" + string(x) + ", " + string(y) + ")");