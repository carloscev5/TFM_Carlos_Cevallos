/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
image_speed = 0;
esta_funcionando = true;
if(ds_list_find_index(global.objetivos, 5) >= 0){
	image_speed = 0;
	image_index = 2;
	esta_funcionando = false;
}
if(ds_list_find_index(global.objetivos, 8) >= 0){
	image_speed = 0;
	image_index = 0;
	esta_funcionando = true;
}

if(ds_list_find_index(global.objetivos, 10) >= 0){
	image_speed = 0;
	image_index = 2;
	esta_funcionando = false;
}