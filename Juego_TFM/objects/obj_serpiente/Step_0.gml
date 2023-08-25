/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(esta_quieto && ds_list_find_index(global.objetivos, 1) == -1){
	var perro = collision_rectangle(x-distancia,y,x+sprite_width-distancia,y+sprite_height,obj_perro,false,false);
		if(perro){
			if(perro.ld && !ladro && perro.esta_ladrando){
				ladro = true;
				esta_retrocediendo = true;
				esta_quieto = false;
				cont_mov = 0;
			}
			if(!perro.esta_ladrando){
				ladro = false;	
			}
		}	
}



if(esta_retrocediendo){
	x += vel_ret;
	cont_mov += vel_ret;
	if(mov == cont_mov){
		esta_retrocediendo = false;
		esta_quieto = true;
		cont_mov = 0;
		alarm[0] = room_speed*2;
	}
}

if(esta_hacia_adelante){
	x -= vel_ade;
	cont_mov += vel_ade;
	if(mov == cont_mov){
		esta_hacia_adelante = false;
		esta_quieto = true;
		cont_mov = 0;
	}
}
if(ds_list_find_index(global.objetivos, 1) >= 0){
	xstart = 2120;
}