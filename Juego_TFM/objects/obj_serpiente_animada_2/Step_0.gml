/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(instance_exists(obj_serpiente_2)){
	x_act=obj_serpiente_2.x-1100;
	y_act=obj_serpiente_2.y-120;
	if(x_ant != x_act || y_ant != y_act){
		alarm[0] = room_speed*0.5;
		x = x_act;
		y = y_act;
		sprite_index = spr_serpiente_saliendo_tuberia;
		image_index = 0;	
		image_speed = 0;
	}
}else{
	if(!murio){
		sprite_index = spr_serpiente_entrando_tuberia;
		murio = true;
	}
		
}