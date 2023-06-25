/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(!eventos_actualizados){
	if(ds_list_find_index(global.objetivos, 1) >= 0){
		instance_destroy(obj_techo_1);
		instance_destroy(obj_boton_2_1);
	}
	eventos_actualizados = true;
}