/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(esta_moviendo){
	cont += vel;
	if(cont == limit){
		if(esta_regresando){
			esta_regresando = false;
		}else{
			esta_regresando = true;
		}
		cont = 0;
	}

	switch(pos){
	
		case "arr":
			if(esta_regresando){
				y = y + vel;	
			}else{
				y = y - vel;		
			}
			break;
		
		case "aba":
			if(esta_regresando){
				y = y - vel;	
			}else{
				y = y + vel;		
			}
			
			break;
		
		case "der":
			if(esta_regresando){
				x = x - vel;	
			}else{
				x = x + vel;		
			}
			break;
		
		case "izq":
			if(esta_regresando){
				x = x + vel;	
			}else{
				x = x - vel;		
			}
			break;
	
	}
}


if(global.active_character == 2){

	if(instance_exists(obj_gato)){

		if  obj_gato.y+obj_gato.sprite_height <= y{

			solid = true;
		
	
		}else{
	
			solid = false;
	
		}

	}
	
}



if(global.active_character == 1){

	if(instance_exists(obj_perro)){

		if  obj_perro.y+obj_perro.sprite_height <= y{

			solid = true;
		
	
		}else{
	
			solid = false;
	
		}

	}
	
}



if(global.active_character == 3){
	
	
	if(instance_exists(obj_cuy)){

		if  obj_cuy.y+obj_cuy.sprite_height <= y{

			solid = true;
		
	
		}else{
	
			solid = false;
	
		}

	}
	
}
