/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(ds_list_find_index(global.objetivos, 3) >= 0){
	y -= vel;
	if(y<2048){
		instance_destroy();
	}
}