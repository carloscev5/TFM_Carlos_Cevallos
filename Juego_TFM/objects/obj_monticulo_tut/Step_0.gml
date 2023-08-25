/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(!finalizado){
	var perro = collision_rectangle(x-distancia,y,x+sprite_width-distancia,y+sprite_height,obj_perro,false,false);
	if(perro){
		if(perro.esta_cavando){
			sprite_index = spr_monticulo_mov;
			image_speed = 1;
			tiempo_vida -= 1;
		}else{
			sprite_index = spr_monticulo_quieto;
			image_index = 0;
			image_speed = 0;
		}
	}else{
		sprite_index = spr_monticulo_quieto;
		image_index = 0;
		image_speed = 0;	
	}

	if(tiempo_vida <= 0){
		global.tiene_llave = true;
		finalizado = true;
		sprite_index = spr_monticulo_quieto;
		image_index = 1;
		image_speed = 0;
	}

}
