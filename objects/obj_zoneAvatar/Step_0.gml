/// @description Insert description here
// You can write your code in this editor


if(keyboard_check_pressed(ord("J"))) show_debug_message("salut");
//if keyboard_check(ord("A"))
//    {
//   show_debug_message("sallut");
//    }

//show_debug_message("T: " + string( keyboard_check_pressed(ord("T"))) + " Y: "+ string( keyboard_check_pressed(ord("T"))));

if(keyboard_check_pressed(ord("U")) && !keyboard_check_pressed(ord("I")) && bCheckUp){
	bCheckUp = ! bCheckUp;
	vspeed -= speed_variation;
	//show_debug_message("T !Y");
}
if(!keyboard_check_pressed(ord("U")) && keyboard_check_pressed(ord("I")) && !bCheckUp){
	bCheckUp = ! bCheckUp;
	vspeed -= speed_variation;
	//show_debug_message("!T Y");
}
if(keyboard_check_pressed(ord("K")) && !keyboard_check_pressed(ord("L")) && bCheckRight){
	bCheckRight = ! bCheckRight;
	hspeed += speed_variation;
}
if(!keyboard_check_pressed(ord("K")) && keyboard_check_pressed(ord("L")) && !bCheckRight){
	bCheckRight = ! bCheckRight;
	hspeed += speed_variation;
}
if(keyboard_check_pressed(ord("N")) && !keyboard_check_pressed(ord("M")) && bCheckDown){
	bCheckDown = ! bCheckDown;
	vspeed += speed_variation;
}
if(!keyboard_check_pressed(ord("N")) && keyboard_check_pressed(ord("M")) && !bCheckDown){
	bCheckDown = ! bCheckDown;
	vspeed += speed_variation;
}

if(keyboard_check_pressed(ord("G")) && !keyboard_check_pressed(ord("H")) && bCheckLeft){
	bCheckLeft = ! bCheckLeft;
	hspeed -= speed_variation;
}
if(!keyboard_check_pressed(ord("G")) && keyboard_check_pressed(ord("H")) && !bCheckLeft){
	bCheckLeft = ! bCheckLeft;
	hspeed -= speed_variation;
}

// modification de la zone avatar avec la vitesse et de la vitesse de l'avatar
if(speed < 0.2){
	image_xscale = 3;
	image_yscale = 3;	
}
else{
	if(abs(hspeed) < 1.5 || abs(vspeed) < 1.5){
		image_xscale = 3-1.5*abs(hspeed);
		image_yscale = 3-1.5*abs(vspeed);
	}
	else { 
		image_xscale = 0.5;
		image_yscale = 0.5;
	}
}

if(speed > speed_limit) {
	speed = speed_limit;
}
