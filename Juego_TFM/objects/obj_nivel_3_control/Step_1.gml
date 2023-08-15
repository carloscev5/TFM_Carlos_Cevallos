/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(!eventos_actualizados){
	if(ds_list_find_index(global.objetivos, 1) >= 0){
		obj_serpiente.x = 2370;
		obj_serpiente.alarm[0] = room_speed*1;
		instance_destroy(obj_hueco_1);
	}
	if(ds_list_find_index(global.objetivos, 2) >= 0){
		instance_destroy(obj_erizo);
		obj_mover_3.solid = false;
		obj_mover_3.x = 2824;
		obj_mover_3.y = 832;
	}
	if(ds_list_find_index(global.objetivos, 3) >= 0){
		obj_piso_saliente_3.x = 4096;
		instance_destroy(obj_boton_3_1);
	}
	if(ds_list_find_index(global.objetivos, 4) >= 0){
		instance_destroy(cristal_3);
	}
	
	
	
	eventos_actualizados = true;
}
