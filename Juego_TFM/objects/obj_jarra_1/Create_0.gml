/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
image_speed = 0;
image_index = 0;
esta_roto = false;

if(ds_list_find_index(global.objetivos, 3) >= 0){
	esta_roto = true;
	image_speed = 0;
	image_index = 5;
}