/// @description Insert description here
// You can write your code in this editor
compBoid = new boid(self);



if(instance_number(obj_boid)==1){
	
	repeat(50){
		
		var _x = random_range(0,room_width);
		var _y = random_range(0,room_height);
		instance_create_depth(_x,_y,-100,obj_boid);	
	}

}