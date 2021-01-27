/// @description Insert description here
// You can write your code in this editor

var nbBoids = instance_number(obj_boid);

var valsep = [0,0];
var valcoh = [0,0];
var valalig = [0,0];

for(var i = 0 ; i < nbBoids ; i ++){
	var boid = instance_find(obj_boid,i);
	//var d = distance_to_object(boid);
	
	var hSpNorm = hspeed/speed;
	var vSpNorm = vspeed/speed;
	var dx = boid.x - x;
	var dy = boid.y - y;
	
	var d = abs(dx) + abs(dy);
	
	
	if(d != 0 && d < cohMax){
			valcoh[0] += boid.x*coh*d;
			valcoh[1] += boid.y*coh*d;
		
		if(d < aligMax){
			valalig[0] += boid.hspeed * alig;
			valalig[1] += boid.vspeed * alig;
			if(d < sepMax){
					var invd = 1/d;
					valsep[0] -= dx * invd * sep;
					valsep[1] -= dy * invd * sep;
			}
			
		}
			
	}
	
}