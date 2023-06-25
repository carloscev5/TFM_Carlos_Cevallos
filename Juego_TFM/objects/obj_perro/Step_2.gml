/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
xmed1 = x-65;
xmed2 = x+65;

#region Colision con floor
if(ld){
		
	if(caer){
		
		var ground = collision_rectangle(xmed1,y+vspeed,xmed2,y+sprite_height+vspeed,obj_floor,false,false);
		if(ground){
		
			y = ground.y-sprite_height;	
			vspeed = 0;
		
		}
	}
	
	if(saltando){
		
		var ground = collision_rectangle(xmed1,y+vspeed,xmed2,y+sprite_height+vspeed,obj_floor,false,false);
		if(ground){
		
			y = ground.y+ground.sprite_height-1;	
			vspeed = 0;
		
		}
	
		
	}
	
	
}else{


		
	if(caer){
		var ground = collision_rectangle(xmed1,y+vspeed,xmed2,y+sprite_height+vspeed,obj_floor,false,false);
		if(ground){
		
			y = ground.y-sprite_height;	
			vspeed = 0;
		}
	}
	if(saltando){
		
		var ground = collision_rectangle(xmed1,y+vspeed,xmed2,y+sprite_height+vspeed,obj_floor,false,false);
		if(ground){
			y = ground.y+ground.sprite_height-1;	
			vspeed = 0;
		}
		
	}
	
}
#endregion

#region Colision con floor no solid
if(ld){
		
	if(caer){
		
		var ground = collision_rectangle(xmed1,y+vspeed,xmed2,y+sprite_height+vspeed,obj_floor_no_solid,false,false);
		if(ground && ground.solid){
		
			y = ground.y-sprite_height;	
			vspeed = 0;
			
		
		}
	}

	
	
}else{


		
	if(caer){
		
		var ground = collision_rectangle(xmed1,y+vspeed,xmed2,y+sprite_height+vspeed,obj_floor_no_solid,false,false);
		if(ground  && ground.solid){
		
			y = ground.y-sprite_height;	
			vspeed = 0;
		
		}
		
	}

	
}
#endregion

#region Colision con floor moving
if(ld){
		
	if(caer){
		
		var ground = collision_rectangle(xmed1,y+vspeed,xmed2,y+sprite_height+vspeed,obj_floor_moving,false,false);
		if(ground){
		
			y = ground.y-sprite_height;	
			vspeed = 0;
		
		}
	}else if(saltando){
		
		var ground = collision_rectangle(xmed1,y+vspeed,xmed2,y+sprite_height+vspeed,obj_floor_moving,false,false);
		if(ground){
		
			y = ground.y+ground.sprite_height-1;	
			vspeed = 0;
		
		}
	
		
	}
	var ground = collision_rectangle(xmed1,y,xmed2,y+sprite_height+1,obj_floor_moving,false,false);
		if(ground){
			x += ground.vel;
		}
	
	
}else{


		
	if(caer){
		var ground = collision_rectangle(xmed1,y+vspeed,xmed2,y+sprite_height+vspeed,obj_floor_moving,false,false);
		if(ground){
		
			y = ground.y-sprite_height;	
			vspeed = 0;
		}
	}else if(saltando){
		
		var ground = collision_rectangle(xmed1,y+vspeed,xmed2,y+sprite_height+vspeed,obj_floor_moving,false,false);
		if(ground){
			y = ground.y+ground.sprite_height-1;	
			vspeed = 0;
		}
		
	}
	var ground = collision_rectangle(xmed1,y,xmed2,y+sprite_height+1,obj_floor_moving,false,false);
	if(ground){
		x += ground.vel;
	}
	
}
#endregion

#region Colision con plataform moving
	var ground = collision_rectangle(xmed1,y-11,xmed2,y+sprite_height+11,obj_plataform_moving,false,false);
	if(ground && ground.solid){
		y = ground.y-sprite_height;	
		vspeed = 0;
	}
#endregion


if(ld){

	image_xscale = -1;
	
}else{
	
	image_xscale = 1;
	
}
	
