/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(!finalizado){
	var perro = collision_rectangle(x-distancia,y,x+sprite_width-distancia,y+sprite_height,obj_perro,false,false);
	if(perro){
		if(perro.esta_cavando){
			sprite_index = spr_bolsa_mov;
			image_speed = 1;
			tiempo_vida -= 1;
		}else{
			sprite_index = spr_bolsa_quieta;
			image_index = 0;
			image_speed = 0;
		}
	}else{
		sprite_index = spr_bolsa_quieta;
		image_index = 0;
		image_speed = 0;	
	}

	if(tiempo_vida <= 0){
		global.tiene_llave = true;
		ds_list_add(global.objetivos, 10);	
		audio_play_sound(snd_recoger_llave, 10, false);
		scr_guardar_partida();
		finalizado = true;
		sprite_index = spr_bolsa_quieta;
		image_index = 1;
		image_speed = 0;
	}

}
