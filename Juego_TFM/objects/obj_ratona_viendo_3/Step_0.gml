/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if((x_ant != obj_ratona_3.x-74 || y_ant != obj_ratona_3.y-56) && cont_cambio ==0){
	cont_cambio = 5;
}

if(cont_cambio > 0 && obj_ratona_3.puede_moverse){
	sprite_index = spr_ratona_saliendo_tuberia;
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
			if(obj_ratona_3.x == 1344){
				image_angle = 90;
				x = 1288;
				y = 2064;
			}else{
				x = obj_ratona_3.x-74;
				y = obj_ratona_3.y-56;	
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
	sprite_index = spr_ratona_viendo_3;
	x = obj_ratona_3.x-74;
	y = obj_ratona_3.y-56;

	if(obj_ratona_3.x == 1344){
		image_angle = 90;
		x = 1288;
		y = 2064;
	}
}