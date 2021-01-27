/// @description Insert description here
// You can write your code in this editor

zone = instance_find(obj_zoneAvatar,0);

x = zone.x;
y = zone.y;
dirX = random_range(zone.x-zone.sprite_width/2,zone.x+zone.sprite_width/2);
dirY = random_range(zone.y-zone.sprite_height/2,zone.y+zone.sprite_height/2);

