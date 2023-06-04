/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
acertijos_completados = false;
nivel_actual = global.nivel;

global.objetivos = ds_list_create();;

scr_cargar_estado();

if(ds_list_find_index(global.objetivos, 1) >= 0){
	
	instance_destroy(jaula_perro_1);
	instance_destroy(jaula_perro_2);
	instance_destroy(jaula_perro_3);
	
}

if(ds_list_find_index(global.objetivos, 2) >= 0){
	
	instance_destroy(jaula_cuy_1);
	instance_destroy(jaula_cuy_2);
	
}

//variable_instance_get(jaula_perro_1,obj_floor)
