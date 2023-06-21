/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(esta_funcionando){
	if(ds_list_find_index(global.objetivos, 5) >= 0 && 
	ds_list_find_index(global.objetivos, 8) == -1){
		image_speed = 1;
		esta_funcionando = false;
	}

	if(ds_list_find_index(global.objetivos, 10) >= 0){
		image_speed = 1;
		esta_funcionando = false;
	}
}else{
	if(ds_list_find_index(global.objetivos, 8) >= 0 &&
	ds_list_find_index(global.objetivos, 10) == -1){
		image_speed = 0;
		image_index = 0;
		esta_funcionando = true;
	}
}
