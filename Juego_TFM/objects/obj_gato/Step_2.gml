/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

xmed1 = x-132;
xmed2 = x+132;
	
#region Colision con floor
	if(saltando){
		var ground = collision_rectangle(xmed1,y+vspeed,xmed2,y+sprite_height+vspeed,obj_floor,false,false);
		if(ground){
			y = ground.y+ground.sprite_height-1;	
			vspeed = 0;
		}
	}else{
		var ground = collision_rectangle(xmed1,y+vspeed,xmed2,y+sprite_height+vspeed,obj_floor,false,false);
		if(ground){
		
			y = ground.y-sprite_height;	
			vspeed = 0;
		
		}
	}
#endregion

#region Colision con floor no solid
	if(caer){
		var ground = collision_rectangle(xmed1,y+vspeed,xmed2,y+sprite_height+vspeed,obj_floor_no_solid,false,false);
		if(ground && ground.solid){
			y = ground.y-sprite_height;	
			vspeed = 0;
			
		}
	}
#endregion

#region Colision con objetos a mover
if(instance_exists(obj_mover_1) && obj_mover_1.solid = true){
	if(saltando){
		var ground = collision_rectangle(xmed1,y+vspeed,xmed2,y+sprite_height+vspeed,obj_mover_1,false,false);
		if(ground){
			y = ground.y+ground.sprite_height-1;	
			vspeed = 0;
		}
	}else{
		var ground = collision_rectangle(xmed1,y+vspeed,xmed2,y+sprite_height+vspeed,obj_mover_1,false,false);
		if(ground){
			y = ground.y-sprite_height;	
			vspeed = 0;	
		}
	}
}

if(instance_exists(obj_mover_3) && obj_mover_3.solid = true){
	if(saltando){
		var ground = collision_rectangle(xmed1,y+vspeed,xmed2,y+sprite_height+vspeed,obj_mover_3,false,false);
		if(ground){
			y = ground.y+ground.sprite_height-1;	
			vspeed = 0;
		}
	}else{
		var ground = collision_rectangle(xmed1,y+vspeed,xmed2,y+sprite_height+vspeed,obj_mover_3,false,false);
		if(ground){
			y = ground.y-sprite_height;	
			vspeed = 0;	
		}
	}
}

if(instance_exists(obj_mover_tut) && obj_mover_tut.solid = true){
	if(saltando){
		var ground = collision_rectangle(xmed1,y+vspeed,xmed2,y+sprite_height+vspeed,obj_mover_tut,false,false);
		if(ground){
			y = ground.y+ground.sprite_height-1;	
			vspeed = 0;
		}
	}else{
		var ground = collision_rectangle(xmed1,y+vspeed,xmed2,y+sprite_height+vspeed,obj_mover_tut,false,false);
		if(ground){
			y = ground.y-sprite_height;	
			vspeed = 0;	
		}
	}
}
#endregion

#region Colision con floor moving
	if(saltando){
		var ground = collision_rectangle(xmed1,y+vspeed,xmed2,y+sprite_height+vspeed+1,obj_floor_moving,false,false);
		if(ground){
			x += ground.vel;
			y = ground.y+ground.sprite_height-1;	
			vspeed = 0;
		}
	}else{
		var ground = collision_rectangle(xmed1,y+vspeed,xmed2,y+sprite_height+vspeed+1,obj_floor_moving,false,false);
		if(ground){
			x += ground.vel;
			y = ground.y-sprite_height;	
			vspeed = 0;
		
		}
	}
#endregion
	
	
if(ld){

	image_xscale = -1;
	
}else{
	
	image_xscale = 1;
	
}

