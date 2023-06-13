/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if keyboard_check_pressed(ord("R")) or gamepad_button_check_pressed(global.gp, gp_select){
	audio_stop_all();
	room_restart();
}

if keyboard_check_pressed(ord("I")){
	global.active_character++;
	global.change_character = true;
	if(global.active_character == 4){	
		global.active_character = 1;	
	}
}

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
		scr_guardar_partida();
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
		scr_guardar_partida();
	}

}
#endregion

#region Tercer Obstaculo
	if(obj_perro.esta_ladrando && (nuevo_piso.x != nuevo_piso.xstart)){
	
		var x_aux1 = (obj_perro.x - 100);
		var x_aux2 = (obj_perro.x + 100);
		var y_aux1 = (obj_perro.y + 300);
		var y_aux2 = (obj_perro.y + 512);
		if(obj_perro.ld){
			if(collision_rectangle(x_aux1 + 500, y_aux1, x_aux2, y_aux2, cristal_1,false, true)){	
			instance_destroy(cristal_1);
			laser_1.visible = true;
			laser_2.visible = false;
			nuevo_piso.x = nuevo_piso.xstart;
			nuevo_piso.y = nuevo_piso.ystart;
			ds_list_add(global.objetivos, 3);	
			scr_guardar_partida();
		}
		
	}
	

}
#endregion