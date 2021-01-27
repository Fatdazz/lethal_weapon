/// @description Insert description here
// You can write your code in this editor


if(keyboard_check_pressed(ord("J"))) show_debug_message("sallut");
//if keyboard_check(ord("A"))
//    {
//   show_debug_message("sallut");
//    }

//show_debug_message("T: " + string( keyboard_check_pressed(ord("T"))) + " Y: "+ string( keyboard_check_pressed(ord("T"))));

if(keyboard_check_pressed(ord("T")) && !keyboard_check_pressed(ord("Y")) && bCheckUp){
	bCheckUp = ! bCheckUp;
	vspeed -= 0.01;
	//show_debug_message("T !Y");
}
if(!keyboard_check_pressed(ord("T")) && keyboard_check_pressed(ord("Y")) && !bCheckUp){
	bCheckUp = ! bCheckUp;
	vspeed -= 0.01;
	//show_debug_message("!T Y");
}
if(keyboard_check_pressed(ord("J")) && !keyboard_check_pressed(ord("K")) && bCheckRight){
	bCheckRight = ! bCheckRight;
	hspeed += 0.01;
}
if(!keyboard_check_pressed(ord("J")) && keyboard_check_pressed(ord("K")) && !bCheckRight){
	bCheckRight = ! bCheckRight;
	hspeed += 0.01;
}
if(keyboard_check_pressed(ord("G")) && !keyboard_check_pressed(ord("H")) && bCheckDown){
	bCheckDown = ! bCheckDown;
	vspeed += 0.01;
}
if(!keyboard_check_pressed(ord("G")) && keyboard_check_pressed(ord("H")) && !bCheckDown){
	bCheckDown = ! bCheckDown;
	vspeed += 0.01;
}

if(keyboard_check_pressed(ord("D")) && !keyboard_check_pressed(ord("F")) && bCheckLeft){
	bCheckLeft = ! bCheckLeft;
	hspeed -= 0.01;
}
if(!keyboard_check_pressed(ord("D")) && keyboard_check_pressed(ord("F")) && !bCheckRight){
	bCheckLeft = ! bCheckLeft;
	hspeed -= 0.01;
}