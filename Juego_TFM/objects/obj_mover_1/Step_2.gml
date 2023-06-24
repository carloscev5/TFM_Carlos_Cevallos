/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

#region Colision con floor
if(ld){
		
	if(caer){
		
		var ground = collision_rectangle(xmed1,y+vspeed,xmed2,y+sprite_height+vspeed,obj_floor,false,false);
		if(ground){
		
			y = ground.y-sprite_height;	
			vspeed = 0;
			solid = true;

		
		}
	}
	
	
}else{


		
	if(caer){
		var ground = collision_rectangle(xmed1,y+vspeed,xmed2,y+sprite_height+vspeed,obj_floor,false,false);
		if(ground){
		
			y = ground.y-sprite_height;	
			vspeed = 0;
			solid = true;

		}
	}
	
}
#endregion

#region Colision con floor no solid
if(ld){
		
	if(caer){
		
		var ground = collision_rectangle(xmed1,y+vspeed,xmed2,y+sprite_height+vspeed,obj_floor_no_solid,false,false);
		if(ground){
		
		caer = false;
			y = ground.y-sprite_height;	
			vspeed = 0;
			solid = true;

			
		
		}
	}

	
	
}else{


		
	if(caer){
		
		var ground = collision_rectangle(xmed1,y+vspeed,xmed2,y+sprite_height+vspeed,obj_floor_no_solid,false,false);
		if(ground){
		
			y = ground.y-sprite_height;	
			vspeed = 0;
			solid = true;
			caer = false;

		
		}
		
		
	}

	
}
#endregion

