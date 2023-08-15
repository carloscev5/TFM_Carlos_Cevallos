/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

#region Colision con floor
		var ground = collision_rectangle(xmed1,y+vspeed,xmed2,y+sprite_height+vspeed,obj_floor,false,false);
		if(ground){
			solid = false;
			y = ground.y-sprite_height;	
			ds_list_add(global.objetivos, 2);	
			scr_guardar_partida();
			vspeed = 0;
		}
		
#endregion

#region Colision con floor no solid
	if(caer){
		var ground = collision_rectangle(xmed1,y+vspeed,xmed2,y+sprite_height+vspeed,obj_floor_no_solid,false,false);
		if(ground){
			y = ground.y-sprite_height;	
			vspeed = 0;
		}
	}
#endregion