// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations

steer = function(target, amount){
	var dir =[ target[0] - x ,target[1] - y];
	var d = abs(dir[0]) + abs(dir[1]);
	if (d > 2) {
		var  invDist = 1 / d;
		dir[0] *= invDist;
		dir[1] *= invDist;
		// steer, desired - vel
		target[0] = dir[0] - hspeed;
		target[1] = dir[1] - vspeed;
		var steerLen = abs(target[0]) + abs(target[1]);
		if (steerLen > 0) {
			var invSteerLen = amount / steerLen;// 1f / steerLen;
			target[0] *= invSteerLen;
			target[1] *= invSteerLen;
		}
	}
	return target;

}

boid = function(_objType) constructor{
	ax = 0;
	ay = 0;
	objType = _objType;
	cohesion = 0;
	align = 0;
	separate = 0;
	separatedist = 0;
	cohesiondist = 0;
	aligndist = 0;
	static update = function(amount){
		ax = 0;
		ay = 0;
		var vec = [0,0];
		var valSep = [0,0];
		var valAli = [0,0];
		var valCoh = [0,0];
		
		var  countsep  = 0;
		var countali = 0;
		var countcoh = 0;
		var invD = 0;
		var nbBoids = instance_number(objType);
		
		for(var i = 0; i < nbBoids ; i++){
			var oboid = instance_find(objType,i);
			var dx = oboid.x - x;
			var dy = oboid.y - y;
			var d = abs(dx) + abs(dy);
			
			if(d < 1e-7) continue;
			
			if (d < separatedist) {
			countsep++;
			invD = 1/ d;
			sep[0] -= dx * invD;
			sep[1] -= dy * invD;
		}
		
			if (d < cohesiondist) {
			countcoh++;
			coh[0] += oboid.x;
			coh[1] += oboid.y;
		}
			
			if (d < aligndist) {
			countali++;
			ali[0] += oboid.hspeed;
			ali[1] += oboid.vspeed;
		}
			
			
		}
		
					
		if (countsep > 0) {
			var invForSep = separate / countsep;
			sep[0] *= invForSep;
			sep[1] *= invForSep;
			}
			
		if (countali > 0) {
			// final float invForAli = 1f / (float) countali;
			var  invForAli = align / countali;
			ali[0] *= invForAli;
			ali[1] *= invForAli;
			}
			
		if (countcoh > 0) {
			var invForCoh = cohesion / countcoh;
			coh[0] *= invForCoh;
			coh[1] *= invForCoh;
			coh = steer(coh, 1);
	}

		vec[0] = valSep[0]+ valAli[0] + valCoh[0];
		vec[1] = valSep[1]+ valAli[1] + valCoh[1];
		
		
		var d = abs(vec[0]) + abs(vec[1]);
		if (d > 0) {
			var invDist = amount / d;
			vec[0] *= invDist;
			vec[1] *= invDist;
		}
		vec[0] *= amount;
		vec[1] *= amount;
		ax += vec[0];
		ay += vec[1];
		
	}

}