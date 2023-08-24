/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(ds_list_find_index(global.objetivos, 7) == -1){
	if(global.posicion_raton_gordo == 1 || global.posicion_raton_gordo == 3){
		if(posicion_actual != global.posicion_raton_gordo && cont_cambio == 0){
			cont_cambio = 10;
			posicion_actual = global.posicion_raton_gordo;
		}
		if(cont_cambio > 0){
			sprite_index = spr_raton_gordo_entrando;
			cont_cambio--;
			image_speed = 0;
			switch(cont_cambio){
				case 10:
					image_index = 4;
					break;
				case 9:
					image_index = 3;
					break;
				case 8:
					image_index = 2;
					break;
				case 7:
					image_index = 1;
					break;
				case 6:
					image_index = 0;
					if(global.posicion_raton_gordo == 1){
						x = obj_agujero_nivel_2_3.x-125;
						y = obj_agujero_nivel_2_3.y+40;
					}else{
						x = obj_agujero_nivel_2_4.x-125;
						y = obj_agujero_nivel_2_4.y+40;				
					}
					break;
				case 5:
					image_index = 1;
					break;
				case 4:
					image_index = 2;
					break;
				case 3:
					image_index = 3;
					break;
				case 2:
					image_index = 4;
					break;
				case 1:
					image_index = 4;
					break;
			}
		}else{
			image_speed = 1;
			esta_cambiando = false;
			sprite_index = spr_raton_gordo_viendo;
			if(global.posicion_raton_gordo == 1){
				x = obj_agujero_nivel_2_3.x-125;
				y = obj_agujero_nivel_2_3.y+40;
			}else{
				x = obj_agujero_nivel_2_4.x-125;
				y = obj_agujero_nivel_2_4.y+40;				
			}
		}
	}else{
		sprite_index = spr_raton_gordo_entrando;
		image_index = 0;
		image_speed = 0;
	}
}else{
	
	if(ds_list_find_index(global.objetivos, 7) != -1 &&
	ds_list_find_index(global.objetivos, 8) == -1
	&& !corriendo){
		sprite_index = spr_raton_gordo_corr_bol;
		image_speed = 1;
		x = obj_agujero_nivel_2_4.x+50;
		y = obj_agujero_nivel_2_4.y+50;
		image_xscale = -1;
		corriendo = true;
	}
	
	if(ds_list_find_index(global.objetivos, 8) != -1 &&
	ds_list_find_index(global.objetivos, 9) == -1
	&& !corriendo){
		sprite_index = spr_raton_gordo_corr;
		image_speed = 1;
		x = obj_agujero_nivel_2_4.x+600;
		y = obj_agujero_nivel_2_4.y+50;
		image_xscale = -1;
		corriendo = true;
	}
	
	if(ds_list_find_index(global.objetivos, 8) != -1){
		sprite_index = spr_raton_gordo_corr;
		vel = 20;
	}
	
	if(ds_list_find_index(global.objetivos, 9) != -1){
		instance_destroy();
	}
	
	x += vel;
	
	
	
}