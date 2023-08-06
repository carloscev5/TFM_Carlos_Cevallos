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
	if(ds_list_find_index(global.objetivos, 4) >= 0){
		obj_plataforma_salida_1.x = 448;
	}
	if(ds_list_find_index(global.objetivos, 5) >= 0){
		global.posicion_raton_gordo = 3;
	}
	if(ds_list_find_index(global.objetivos, 6) >= 0){
		global.posicion_raton_gordo = 1;
	}
	if(ds_list_find_index(global.objetivos, 7) >= 0
	&& ds_list_find_index(global.objetivos, 8) == -1){
		alarm[0] = room_speed*3;
		alarm[1] = room_speed*5;
	}
	if(ds_list_find_index(global.objetivos, 8) >= 0
	&& ds_list_find_index(global.objetivos, 9) == -1){
		instance_create_layer(2688, 384, "Objects", obj_bolsa);
		alarm[1] = room_speed*5;
	}
	if(ds_list_find_index(global.objetivos, 9) >= 0){
		instance_create_layer(2688, 384, "Objects", obj_bolsa);
		obj_piso_mov_1.vel = obj_piso_mov_1.vel * -0.1;
		obj_piso_mov_2.vel = obj_piso_mov_2.vel * -0.1;
	}
	if(ds_list_find_index(global.objetivos, 10) >= 0){
		instance_destroy(obj_bolsa);
		global.tiene_llave = true;
	}
	eventos_actualizados = true;
}
