/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
draw_self()
var obj = instance_find(obj_zoneAvatar,0);
draw_set_color(c_fuchsia);
draw_arrow(x,y,x+20*obj.hspeed,y+20*obj.vspeed,obj.speed);