/// @description Insert description here
// You can write your code in this editor



//show_debug_message("meeting: " + string(instance_position(dirX,dirY,obj_avatar)));
//show_debug_message("dirX: "  + string(dirX) + " dirY: " + string(dirY) );
//show_debug_message("X: "  + string(x) + " dirY: " + string(y) );
if(instance_position(dirX,dirY,obj_avatar)!=noone || instance_position(dirX,dirY,obj_zoneAvatar) == noone){
	dirX = random_range(zone.x-zone.sprite_width/2,zone.x+zone.sprite_width/2);
	dirY = random_range(zone.y-zone.sprite_height/2,zone.y+zone.sprite_height/2);
	show_debug_message("dirX: "  + string(dirX) + " dirY: " + string(dirY) );
}

direction = point_direction(x,y,dirX,dirY);
speed = 0.5;