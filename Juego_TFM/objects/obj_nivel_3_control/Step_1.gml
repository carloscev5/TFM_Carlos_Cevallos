/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(!eventos_actualizados){
	if(ds_list_find_index(global.objetivos, 1) >= 0){
		obj_serpiente.x = 2370;
		obj_serpiente.alarm[0] = room_speed*1;
	}
	if(ds_list_find_index(global.objetivos, 2) >= 0){
		obj_serpiente.x = 2120;
		obj_serpiente.puede_moverse = false;
		obj_serpiente_2.x = 2432;
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
	if(ds_list_find_index(global.objetivos, 5) >= 0){
		instance_destroy(obj_piso_electrocutado_1);
		instance_destroy(obj_encima_3);
		obj_mover_3.solid = true;
	}	
	if(ds_list_find_index(global.objetivos, 6) >= 0){
		instance_destroy(obj_mover_3);
		instance_destroy(obj_serpiente_2);
	}
	if(ds_list_find_index(global.objetivos, 7) >= 0){
		instance_destroy(obj_piso_electrocutado_2);
		instance_destroy(obj_boton_3_2);
	}
	if(ds_list_find_index(global.objetivos, 8) >= 0){
		obj_ratona_3.x = 1344;
		obj_ratona_3.y = 1920;
		obj_ratona_3.puede_moverse = false;
		instance_create_layer(1248, 1920, "Arte", obj_llave_3);
	}
	if(ds_list_find_index(global.objetivos, 9) >= 0){
		global.tiene_llave = true;
		instance_destroy(obj_llave_3);
	}

	eventos_actualizados = true;
}

	