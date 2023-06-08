/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
xmed1 = x-35;
xmed2 = x+35;


#region Colision con floor
if(ld){
		
		
		var ground = collision_rectangle(xmed1,y+vspeed,xmed2,y+sprite_height+vspeed,obj_floor,false,false);
		if(ground){
		
			y = ground.y-sprite_height;	
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
