/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(global.posicion_raton_gordo == 1 || global.posicion_raton_gordo == 3){
	
	if(cont_cambio > 0){
		sprite_index = spr_raton_gordo_saliendo;
		cont_cambio--;
		image_speed = 0;
		switch(cont_cambio){
			case 5:
				image_index = 3;
				break;
			case 4:
				image_index = 2;
				break;
			case 3:
				image_index = 1;
				if(global.posicion_raton_gordo == 1){
					x = obj_agujero_nivel_2_3.x;
					y = obj_agujero_nivel_2_3.y;
				}else{
					x = obj_agujero_nivel_2_4.x;
					y = obj_agujero_nivel_2_4.y;				
				}

				break;
			case 2:
				image_index = 2;
				break;
			case 1:
				image_index = 3;
				break;
		}
	}else{
		image_speed = 1;
		esta_cambiando = false;
		sprite_index = spr_raton_gordo_viendo;
		if(global.posicion_raton_gordo == 1){
			x = obj_agujero_nivel_2_3.x;
			y = obj_agujero_nivel_2_3.y;
		}else{
			x = obj_agujero_nivel_2_4.x;
			y = obj_agujero_nivel_2_4.y;				
		}
	}
}else{
	sprite_index = spr_raton_gordo_entrando;
	image_index = 0;
	image_speed = 0;
}