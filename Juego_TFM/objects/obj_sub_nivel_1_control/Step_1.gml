/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(!eventos_actualizados){
	if(ds_list_find_index(global.objetivos, 4) >= 0){
		instance_destroy(obj_comida_1);
	}
	if(ds_list_find_index(global.objetivos, 5) >= 0){
		instance_destroy(obj_boton_jaula_sn1_1);
	}
	if(ds_list_find_index(global.objetivos, 6) >= 0){
		instance_destroy(piso_fragil);
		obj_ratona_1.y = 636;
	}
	if(ds_list_find_index(global.objetivos, 8) >= 0){
		obj_boton_jaula_sn1_2.x = 1312;
	}
	if(ds_list_find_index(global.objetivos, 10) >= 0){
		instance_destroy(obj_boton_jaula_sn1_2);
	}
	eventos_actualizados = true;
}