/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if(puede_moverse){
	if(x != (xstart+mov)){
		alarm[0] = room_speed*1;
	}else{
		if(xstart == 2120){
			obj_serpiente_2.x = 2432;
		}
		
	}
	if(esta_quieto){
		esta_quieto = false;
		esta_retrocediendo = false;
		esta_hacia_adelante = true;
		cont_mov = 0;
	}
}