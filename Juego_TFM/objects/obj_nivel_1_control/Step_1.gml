/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(!eventos_actualizados){
	if(ds_list_find_index(global.objetivos, 1) >= 0){
		instance_destroy(jaula_perro_1);
		instance_destroy(jaula_perro_2);
		instance_destroy(jaula_perro_3);
		instance_destroy(obj_jaula_1);
	}
	if(ds_list_find_index(global.objetivos, 2) >= 0){
		instance_destroy(jaula_cuy_1);
		instance_destroy(jaula_cuy_2);
		instance_destroy(obj_jaula_2);
	}
	if(ds_list_find_index(global.objetivos, 3) >= 0){
			laser_1.visible = true;
			laser_2.visible = false;
			instance_destroy(cristal_1);
			nuevo_piso.x = nuevo_piso.xstart;
			nuevo_piso.y = nuevo_piso.ystart;
	}
	if(ds_list_find_index(global.objetivos, 4) >= 0){
			laser_1.visible = false;
			laser_2.visible = true;
			obj_ratona_viendo_1.sprite_index = spr_ratona_dentro;
	}
	if(ds_list_find_index(global.objetivos, 6) >= 0){
		instance_destroy(jaula_gato_3);
		laser_2.visible = true;
		laser_1.visible = false;
		obj_puerta_jaula_gato.y = 640;
	}
	if(ds_list_find_index(global.objetivos, 8) >= 0){
		obj_mover_1.x = 3120;
		obj_mover_1.y = 2304;
		laser_2.visible = false;
		laser_1.visible = true;
	}
	if(ds_list_find_index(global.objetivos, 9) >= 0){
		instance_destroy(obj_llave_1);
		laser_2.visible = true;
		laser_1.visible = false;
	}
	if(ds_list_find_index(global.objetivos, 10) >= 0){
		jaula_techo.x = 4032;
		laser_2.visible = false;
		laser_1.visible = true;
		obj_puerta_jaula_gato.y = -640;
	}
	if(ds_list_find_index(global.objetivos, 11) >= 0){
		laser_2.visible = false;
		laser_1.visible = true;
		obj_mover_1.solid = false;
		obj_mover_1.x = 2180;
		laser_2.esta_danado = true;
		laser_1.esta_danado = true;
	}
	eventos_actualizados = true;
}