/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(!eventos_actualizados){
	if(ds_list_find_index(global.objetivos, 1) >= 0){
		instance_destroy(obj_techo_1);
		instance_destroy(obj_boton_2_1);
	}
	if(ds_list_find_index(global.objetivos, 2) >= 0){
		instance_destroy(fuego_tuberia);
		instance_destroy(obj_tuberia_trigger_2);
	}
	if(ds_list_find_index(global.objetivos, 3) >= 0){
		instance_destroy(obj_rendija_1);
		instance_destroy(obj_boton_2_2);
	}
	if(ds_list_find_index(global.objetivos, 5) >= 0){
		obj_plataforma_salida_1.x = 448;
	}
	if(ds_list_find_index(global.objetivos, 7) >= 0){
		global.posicion_raton_gordo = 3;
	}
	eventos_actualizados = true;
}
