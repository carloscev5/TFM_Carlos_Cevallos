/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(!eventos_actualizados){
	if(ds_list_find_index(global.objetivos, 1) >= 0){
	
		instance_destroy(jaula_perro_1);
		instance_destroy(jaula_perro_2);
		instance_destroy(jaula_perro_3);
	
	}

	if(ds_list_find_index(global.objetivos, 2) >= 0){
	
		instance_destroy(jaula_cuy_1);
		instance_destroy(jaula_cuy_2);
	
	}

	if(ds_list_find_index(global.objetivos, 3) >= 0){
	
			laser_1.visible = true;
			laser_2.visible = false;
			nuevo_piso.x = nuevo_piso.xstart;
			nuevo_piso.y = nuevo_piso.ystart;
	
	}
	eventos_actualizados = true;
}