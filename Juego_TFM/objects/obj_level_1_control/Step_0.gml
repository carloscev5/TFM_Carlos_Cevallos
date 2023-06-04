/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

#region Primer Obstaculo
if(obj_perro.esta_corriendo && instance_exists(jaula_perro_1)){
	
	var x_aux1 = (obj_perro.x - 100);
	var x_aux2 = (obj_perro.x + 100);
	var y_aux1 = (obj_perro.y + 300);
	var y_aux2 = (obj_perro.y + 512);
	if(collision_rectangle(x_aux1 - obj_perro.vel, y_aux1, x_aux2, y_aux2, jaula_perro_1,false, true)
	|| collision_rectangle(x_aux1 + obj_perro.vel, y_aux1, x_aux2, y_aux2, jaula_perro_2,false, true)){	
		instance_destroy(jaula_perro_1);
		instance_destroy(jaula_perro_2);
		instance_destroy(jaula_perro_3);
		ds_list_add(global.objetivos, 1);		
		scr_guardar_estado();
	}
	

}
#endregion

#region Segundo Obstaculo
if(obj_cuy.esta_corriendo && instance_exists(jaula_cuy_1)){
	
	var x_aux1 = (obj_cuy.x - 35);
	var x_aux2 = (obj_cuy.x + 35);
	var y_aux1 = (obj_cuy.y + 440);
	var y_aux2 = (obj_cuy.y + 512);
	if(collision_rectangle(x_aux1 - obj_cuy.vel, y_aux1, x_aux2, y_aux2, jaula_cuy_1,false, true)
	|| collision_rectangle(x_aux1 + obj_cuy.vel, y_aux1, x_aux2, y_aux2, jaula_cuy_2,false, true)){	
		instance_destroy(jaula_cuy_1);
		instance_destroy(jaula_cuy_2);
		ds_list_add(global.objetivos, 2);	
		scr_guardar_estado();
	}

}
#endregion