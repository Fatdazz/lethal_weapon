/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

if(x < sprite_width/2){
	x = sprite_width/2;
	hspeed = 0;
}
if(x > room_width - sprite_width/2){
	x = room_width - sprite_width/2;
	hspeed = 0;
}
if(y < sprite_height/2){
	y = sprite_height/2;
	vspeed = 0;
}
if(y > room_height - sprite_height/2){
	y = room_height - sprite_height/2;
	vspeed = 0;
}
