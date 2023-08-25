/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

#region Colision con floor
if(ld){
		
	if(caer){
		
		var ground = collision_rectangle(xmed1,y+vspeed,xmed2,y+sprite_height+vspeed,obj_floor,false,false);
		if(ground){
			var caja = instance_create_layer(x,y-700,"Arte",obj_caja_rota);
			caja.image_xscale = 2;
			caja.image_yscale = 2;
			instance_destroy();
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

