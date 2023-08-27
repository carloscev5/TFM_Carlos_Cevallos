/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(ds_list_find_index(global.objetivos, 1) >= 0){
	x += vel;
	if(x>672){
		instance_destroy();
	}
}