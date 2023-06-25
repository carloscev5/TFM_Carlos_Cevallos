/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(global.active_character == 1){
	if(instance_exists(obj_perro)){
		if  obj_perro.y+obj_perro.sprite_height <= y{
			solid = true;
		}else{
			solid = false;
		}
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

if(global.active_character == 3){
	if(instance_exists(obj_cuy)){
		if  obj_cuy.y+obj_cuy.sprite_height <= y{
			solid = true;
		}else{
			solid = false;
		}
	}
}




