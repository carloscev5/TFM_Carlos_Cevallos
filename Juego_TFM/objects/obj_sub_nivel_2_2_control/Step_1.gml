/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(!eventos_actualizados){
	if(ds_list_find_index(global.objetivos, 5) >= 0){
		instance_destroy(obj_comida_raton_gordo);
	}
	eventos_actualizados = true;
}